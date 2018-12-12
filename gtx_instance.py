#! /usr/bin/python
from migen import Signal, C, Module, ClockDomain, ClockSignal
from migen.genlib.resetsync import AsyncResetSynchronizer
from misoc.interconnect.csr import AutoCSR, CSRStorage
from collections import namedtuple
import migen.fhdl
import jesd204b.core as jesdc
import jesd204b
import jesd204b.phy as jesdphy
from migen.build.xilinx import common

phyPad = namedtuple("phyPad", "txp txn")

lvdsPair = namedtuple("lvdsPair", "p n")


class JESDConfig(Module, AutoCSR):
    linerate = int(10e9)
    refclk_freq = int(125e6)
    fabric_freq = int(125e6)

    def __init__(self, use_rtio_clock=False):
        self.ibuf_disable = CSRStorage(reset=1)
        self.jreset = CSRStorage(reset=1)
        self.jref = Signal()
        self.refclk = Signal()
        self.clock_domains.cd_jesd = ClockDomain()

        refclk2 = Signal()
        self.specials += [
            AsyncResetSynchronizer(self.cd_jesd, self.jreset.storage),
        ]


class MainMod(Module):

    nLanes = 1

    def __init__(self):
        ps = jesd204b.common.JESD204BPhysicalSettings(l=self.nLanes, m=1, n=16, np=16)
        ts = jesd204b.common.JESD204BTransportSettings(f=2, s=2, k=16, cs=0)
        jesd_settings = jesd204b.common.JESD204BSettings(ps, ts, did=0x5a,
                                                         bid=0x5)

        self.submodules.crg = JESDConfig()
        refclk = self.crg.refclk
        refclk_freq = self.crg.refclk_freq
        linerate = self.crg.linerate
        sys_clk_freq = self.crg.fabric_freq

        self.jesd_pads_txp = []
        self.jesd_pads_txn = []

        self.dac_sync = Signal()
        self.jref = self.crg.jref

        phys = []

        for i in range(self.nLanes):
            self.jesd_pads_txn.append(Signal(name="jesd_txn"))
            self.jesd_pads_txp.append(Signal(name="jesd_txp"))
            gtxq = jesdphy.gtx.GTXQuadPLL(refclk, refclk_freq, linerate)
            self.submodules += gtxq
            phy = jesdphy.JESD204BPhyTX(gtxq,
                                        phyPad(self.jesd_pads_txn[i],
                                               self.jesd_pads_txp[i]),
                                        sys_clk_freq)
            phys.append(phy)

        self.submodules.core = jesdc.JESD204BCoreTX(phys, jesd_settings,
                                                    converter_data_width=64)

        self.submodules.control = jesdc.JESD204BCoreTXControl(self.core)
        self.core.register_jsync(self.dac_sync)
        self.core.register_jref(self.jref)


main_mod = MainMod()
ios = {main_mod.jesd_pads_txn[i] for i in range(main_mod.nLanes)}
ios = {main_mod.jesd_pads_txp[i] for i in range(main_mod.nLanes)} | ios
ios.add(main_mod.dac_sync)
ios.add(main_mod.jref)
ios = ios.union(main_mod.core.sink.flatten())

migen.fhdl.verilog.convert(main_mod, ios=ios,
                           special_overrides=common.xilinx_special_overrides
                           ).write('jesdcore.v')
