from functools import reduce
from operator import and_

from migen import *
from migen.genlib.cdc import MultiReg, ElasticBuffer
from migen.genlib.misc import WaitTimer
from migen.genlib.io import DifferentialInput

from misoc.interconnect.csr import *

from jesd204b.transport import (JESD204BTransportTX,
                                JESD204BSTPLGenerator)
from jesd204b.link import JESD204BLinkTX


class JESD204BCoreTX(Module):
    def __init__(self, phys, jesd_settings, converter_data_width):
        self.enable = Signal()
        self.jsync = Signal()
        self.jref = Signal()
        self.ready = Signal()
        self.restart = Signal()

        self.prbs_config = Signal(4)
        self.stpl_enable = Signal()

        self.sink = Record([("converter"+str(i), converter_data_width)
            for i in range(jesd_settings.nconverters)])

        # # #

        # restart when disabled or on re-synchronization request
        jsync = Signal()
        self.specials += MultiReg(self.jsync, jsync, "sys")
        self.comb += self.restart.eq(~self.enable | (self.ready & ~jsync))

        # transport layer
        transport = JESD204BTransportTX(jesd_settings, converter_data_width)
        transport = ClockDomainsRenamer("jesd")(transport)
        self.submodules.transport = transport

        # stpl
        stpl = JESD204BSTPLGenerator(jesd_settings, converter_data_width)
        stpl = ClockDomainsRenamer("jesd")(stpl)
        self.submodules += stpl
        stpl_enable = Signal()
        self.specials += MultiReg(self.stpl_enable, stpl_enable, "jesd")
        self.comb += \
            If(stpl_enable,
                transport.sink.eq(stpl.source)
            ).Else(
                transport.sink.eq(self.sink)
            )

        links = []
        link_reset = Signal()
        self.comb += link_reset.eq(~reduce(and_, [phy.transmitter.init.done for phy in phys]))
        for n, (phy, lane) in enumerate(zip(phys, transport.source.flatten())):
            phy_name = "phy{}".format(n)
            
            if jesd_settings.nlanes == 1:
                phy_cd = "tx"
            else:
                phy_cd = phy_name + "_tx"

            # claim the phy
            setattr(self.submodules, phy_name, phy)

            ebuf = ElasticBuffer(len(phy.data) + len(phy.ctrl), 4, "jesd", phy_cd)
            setattr(self.submodules, "ebuf{}".format(n), ebuf)

            link = JESD204BLinkTX(len(phy.data), jesd_settings, n)
            link = ClockDomainsRenamer("jesd")(link)
            self.submodules += link
            links.append(link)
            self.comb += [
                link.reset.eq(link_reset),
                link.jsync.eq(self.jsync),
                link.jref.eq(self.jref)
            ]

            # connect data
            self.comb += [
                link.sink.data.eq(lane),
                ebuf.din[:len(phy.data)].eq(link.source.data),
                ebuf.din[len(phy.data):].eq(link.source.ctrl),
                phy.data.eq(ebuf.dout[:len(phy.data)]),
                phy.ctrl.eq(ebuf.dout[len(phy.data):])
            ]

            # connect control
            self.comb += phy.transmitter.init.restart.eq(
                    self.restart & (self.prbs_config == 0))

            self.specials += MultiReg(self.prbs_config,
                                      phy.transmitter.prbs_config,
                                      phy_cd)
        ready = Signal()
        self.comb += ready.eq(reduce(and_, [link.ready for link in links]))
        self.specials += MultiReg(ready, self.ready)

    def register_jsync(self, jsync):
        self.jsync_registered = True
        if isinstance(jsync, Signal):
            self.comb += self.jsync.eq(jsync)
        elif isinstance(jsync, Record):
            self.specials += DifferentialInput(jsync.p, jsync.n, self.jsync)
        else:
            raise ValueError

    def register_jref(self, jref):
        self.jref_registered = True
        if isinstance(jref, Signal):
            self.comb += self.jref.eq(jref)
        elif isinstance(jref, Record):
            self.specials += DifferentialInput(jref.p, jref.n, self.jref)
        else:
            raise ValueError

    def do_finalize(self):
        assert hasattr(self, "jsync_registered")
        assert hasattr(self, "jref_registered")


class JESD204BCoreTXControl(Module, AutoCSR):
    def __init__(self, core):
        self.enable = CSRStorage()
        self.ready = CSRStatus()

        self.prbs_config = CSRStorage(4)
        self.stpl_enable = CSRStorage()

        self.jsync = CSRStatus()

        self.restart_count_clear = CSR()
        self.restart_count = CSRStatus(8)

        # # #

        # core control/status
        self.comb += [
            core.enable.eq(self.enable.storage),
            core.prbs_config.eq(self.prbs_config.storage),
            core.stpl_enable.eq(self.stpl_enable.storage),

            self.ready.status.eq(core.ready)
        ]
        self.specials += MultiReg(core.jsync, self.jsync.status)

        # restart monitoring

        # restart is a slow signal so we simply pass it to sys_clk and
        # count rising edges
        restart = Signal()
        restart_d = Signal()
        restart_count = Signal(8)
        self.specials += MultiReg(core.restart, restart)
        self.sync += \
            If(self.restart_count_clear.re,
                restart_count.eq(0)
            ).Elif(restart & ~restart_d,
                # don't overflow when max is reached
                If(restart_count != (2**8-1),
                    restart_count.eq(restart_count + 1)
                )
            )
        self.comb += self.restart_count.status.eq(restart_count)
