From: Ralf Liesegang <Ralf.Liesegang@fujitsu-siemens.com>
Date: Fri, 01 Jun 2001 14:10:49 +0000
Subject: Re: 2.4.5 and IDE probing hung
Message-Id: <marc-linux-ultrasparc-99140476909697@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-99138883527379@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-99138883527379@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> What exact PC is it taking this trap on, in what function and what

this all is somewhat strange and maybe a timing problem, here are
some boot test:

--	Bootmessages without my patch, but debugmessage in 
	drivers/ide/ide-probe.c at line 321:

        ide_delay_50ms();
321:	printk("%s:%d: in_byte(%lx)\n", __FILE__, __LINE__, IDE_SELECT_REG);
        if (IN_BYTE(IDE_SELECT_REG) != drive->select.all && !drive->present) {

[...]
ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
CMD646: IDE controller on PCI bus 01 dev 18
CMD646: chipset revision 7
CMD646: chipset revision 0x07, UltraDMA Capable
CMD646: 100% native mode on irq 1,7df
    ide0: BM-DMA at 0x1fe02800420-0x1fe02800427, BIOS settings: hda:pio, hdb:pio
    ide1: BM-DMA at 0x1fe02800428-0x1fe0280042f, BIOS settings: hdc:pio, hdd:pio
probing for hda: present=0, media2, probetype=ATA
ide-probe.c:321: in_byte(1fe02800406)
probing for hda: present=0, media2, probetype=ATAPI
ide-probe.c:321: in_byte(1fe02800406)
probing for hdb: present=0, media2, probetype=ATA
ide-probe.c:321: in_byte(1fe02800406)
probing for hdb: present=0, media2, probetype=ATAPI
ide-probe.c:321: in_byte(1fe02800406)
probing for hdc: present=0, media2, probetype=ATA
ide-probe.c:321: in_byte(1fe02800416)
-- do_dae: TPC 4fb280 TNPC 4fb284
probing for hdc: present=0, media2, probetype=ATAPI
ide-probe.c:321: in_byte(1fe02800416)
-- do_dae: TPC 4fb280 TNPC 4fb284
probing for hdd: present=0, media2, probetype=ATA
ide-probe.c:321: in_byte(1fe02800416)
-- do_dae: TPC 4fb280 TNPC 4fb284
probing for hdd: present=0, media2, probetype=ATAPI
ide-probe.c:321: in_byte(1fe02800416)
-- do_dae: TPC 4fb280 TNPC 4fb284
sungem.c:v0.75 21/Mar/01 David S. Miller (davem@redhat.com)

	ok - system is booting TPC 4fb280 should be
	line 321 in (original) drivers/ide/ide-probe.c, that's
	were:
		if (IN_BYTE(IDE_SELECT_REG) ....

--	Bootmessages without my patch, but _no_ debugmessage in 
	drivers/ide/ide-probe.c at line 321.

ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx 
CMD646: IDE controller on PCI bus 01 dev 18 
CMD646: chipset revision 7 
CMD646: chipset revision 0x07, UltraDMA Capable 
CMD646: 100% native mode on irq 1,7df 
    ide0: BM-DMA at 0x1fe02800420-0x1fe02800427, BIOS settings: hda:pio, hdb:pio
    ide1: BM-DMA at 0x1fe02800428-0x1fe0280042f, BIOS settings: hdc:pio, hdd:pio
probing for hda: present=0, media2, probetype=ATA 
probing for hda: present=0, media2, probetype=ATAPI 
probing for hdb: present=0, media2, probetype=ATA 
probing for hdb: present=0, media2, probetype=ATAPI 
probing for hdc: present=0, media2, probetype=ATA 
-- do_dae: TPC 4fb260 TNPC 4fb2e0 
probing for hdc: present=0, media2, probetype=ATAPI 
-- do_dae: TPC 4fb260 TNPC 4fb2cc 
-- do_dae: TPC 4fb2d0 TNPC 4fb2d4 
-- do_dae: TPC 4fab0c TNPC 4fab10 
-- do_dae: TPC 4fab18 TNPC 4fab30 

	system hung!

--	Bootmessages _with_ my patch, but _no_ debugmessage in 
	drivers/ide/ide-probe.c

ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
CMD646: IDE controller on PCI bus 01 dev 18
CMD646: chipset revision 7
CMD646: chipset revision 0x07, UltraDMA Capable
CMD646: 100% native mode on irq 1,7df
    ide0: BM-DMA at 0x1fe02800420-0x1fe02800427, BIOS settings: hda:pio, hdb:pio
    ide1: BM-DMA at 0x1fe02800428-0x1fe0280042f, BIOS settings: hdc:pio, hdd:pio
probing for hda: present=0, media2, probetype=ATA
probing for hda: present=0, media2, probetype=ATAPI
probing for hdb: present=0, media2, probetype=ATA
probing for hdb: present=0, media2, probetype=ATAPI
probing for hdc: present=0, media2, probetype=ATA
-- do_dae: TPC 4fb260 TNPC 4fb2d0
probing for hdc: present=0, media2, probetype=ATAPI
-- do_dae: TPC 4fb260 TNPC 4fb2e0
probing for hdd: present=0, media2, probetype=ATA
-- do_dae: TPC 4fb260 TNPC 4fb268
probing for hdd: present=0, media2, probetype=ATAPI
-- do_dae: TPC 4fb260 TNPC 4fb264
sungem.c:v0.75 21/Mar/01 David S. Miller (davem@redhat.com)

	ok - system is booting TPC 4fb260 (removed printk) should 
	be also line 321 in (original) drivers/ide/ide-probe.c, that's
	were:
		if (IN_BYTE(IDE_SELECT_REG) ....

> line of source exactly?  What is the address used by the load/store
> instruction causing the trap, and does this match up to the I/O areas

i will have a closer look to the "hung" situation.

> of the IDE controller in the machine (as shown by lspci -v or
> in the contents of /proc/pci)?

cat /proc/pci
[..]
  Bus  1, device   3, function  0:
    Class 0101: PCI device 1095:0646 (rev 7).
      IRQ 7184736.
      Master Capable.  Latencyd.  Min Gnt=2.Max Lat=4.
      I/O at 0x1fe02800400 [0x1fe02800407].
      I/O at 0x1fe02800408 [0x1fe0280040b].
      I/O at 0x1fe02800410 [0x1fe02800417].
      I/O at 0x1fe02800418 [0x1fe0280041b].
      I/O at 0x1fe02800420 [0x1fe0280042f].

lspci -v
[..]
01:03.0 IDE interface: CMD Technology Inc PCI0646 (rev 07) (prog-if 8f [Master SecP SecO PriP PriO])
        Subsystem: CMD Technology Inc PCI0646
        Flags: bus master, medium devsel, latency 64, IRQ 7184736
        I/O ports at 2800400 [size=8]
        I/O ports at 2800408 [size=4]
        I/O ports at 2800410 [size=8]
        I/O ports at 2800418 [size=4]
        I/O ports at 2800420 [size]
        Capabilities: [60] Power Management version 1

> It's getting a bus error in privileged mode.  This means it is
> touching something in device space which is not responding, either
> because there is no device there or the device there is not enabled.

yes, there are no devices at all!

> I cannot suggest a good patch until we know exactly what is triggering
> the trap in the first place.

i try to find out more.

cu,
	Ralf

-- 
| Ralf Liesegang          Phone:  +49-5251-8-15131                  |
| FSC EP OS UX1           Fax:    +49-5251-8-16104                  |
| Heinz-Nixdorf-Ring      EMail:  Ralf.Liesegang@fujitsu-siemens.com|
| D-33106 Paderborn       NERV:   liesegang.pad                     | 
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
