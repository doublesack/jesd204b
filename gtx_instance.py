#! /usr/bin/python
from migen import Signal, Module, ClockDomain, ClockSignal, Instance
from migen.genlib.resetsync import AsyncResetSynchronizer
from misoc.interconnect.csr import AutoCSR, CSRStorage
from misoc.interconnect import csr_bus
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
    refclk_freq = int(250e6) # Ref Clk of transceiver
    fabric_freq = int(125e6) # System Clk unrelated to any transceiver business

    def __init__(self, use_rtio_clock=False):
        self.ibuf_disable = CSRStorage(reset=1)
        self.jreset = CSRStorage(reset=1)
        self.jref = Signal()
        self.refclk = Signal()
        self.clock_domains.cd_jesd = ClockDomain()

        self.refclk_pads = lvdsPair(Signal(name="refclk_p"),
                                    Signal(name="refclk_n"))

        refclk2 = Signal()
        self.specials += [
            Instance("IBUFDS_GTE2", i_CEB=self.ibuf_disable.storage,
                     i_I=self.refclk_pads.p, i_IB=self.refclk_pads.n,
                     o_O=self.refclk, o_ODIV2=refclk2),
            AsyncResetSynchronizer(self.cd_jesd, self.jreset.storage),
        ]
        self.specials += Instance("BUFG", i_I=refclk2, o_O=self.cd_jesd.clk)


class MainMod(Module, AutoCSR):

    nLanes = 2
    def_csr_data_width = 8
    def_csr_addr_width = 10

    def __init__(self, csr_data_width=def_csr_data_width,
                 csr_addr_width=def_csr_addr_width):
        ps = jesd204b.common.JESD204BPhysicalSettings(l=self.nLanes, m=1, n=16, np=16)
        ts = jesd204b.common.JESD204BTransportSettings(f=2, s=1, k=16, cs=0)
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

        self.csr_devices = [
            "crg",
            "control"
        ]

        phys = []

        for i in range(self.nLanes):
            self.jesd_pads_txp.append(Signal(name="jesd_txp"))
            self.jesd_pads_txn.append(Signal(name="jesd_txn"))
            gtxq = jesdphy.gtx.GTXQuadPLL(refclk, refclk_freq, linerate)
            self.submodules += gtxq
            phy = jesdphy.JESD204BPhyTX(gtxq,
                                        phyPad(self.jesd_pads_txp[i],
                                               self.jesd_pads_txn[i]),
                                        sys_clk_freq, transceiver="gtx")
            phys.append(phy)

        self.submodules.core = jesdc.JESD204BCoreTX(phys, jesd_settings,
                                                    converter_data_width=64)

        self.submodules.control = jesdc.JESD204BCoreTXControl(self.core)
        self.core.register_jsync(self.dac_sync)
        self.core.register_jref(self.jref)

        self.csr_master = csr_bus.Interface(
            data_width=csr_data_width, address_width=csr_addr_width)
        self.submodules.csrbankarray = csr_bus.CSRBankArray(
            self, self.map_csr_dev, data_width=csr_data_width,
            address_width=csr_addr_width)
        self.submodules.csrcon = csr_bus.Interconnect(
            self.csr_master, self.csrbankarray.get_buses())

    def map_csr_dev(self, name, memory):
        if memory is not None:
            name = name + "_" + memory.name_override
        try:
            return self.csr_devices.index(name)
        except ValueError:
            return None


main_mod = MainMod()
ios = {main_mod.jesd_pads_txp[i] for i in range(main_mod.nLanes)}
ios = {main_mod.jesd_pads_txn[i] for i in range(main_mod.nLanes)} | ios
ios.add(main_mod.dac_sync)
ios.add(main_mod.jref)
ios = ios.union(main_mod.core.sink.flatten())
ios = ios | {main_mod.crg.refclk_pads.p,
             main_mod.crg.refclk_pads.n}
# ios = ios.union(main_mod.csrbankarray.get_buses().flatten())
ios = ios.union(main_mod.csr_master.flatten())

migen.fhdl.verilog.convert(main_mod, ios=ios,
                           special_overrides=common.xilinx_special_overrides
                           ).write('jesdcore.v')
