From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Thu, 07 May 1998 10:10:26 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356530980@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> could you test-boot the appended kernel via network on your Ultra5 and
> tell me if this fixes the bug you are seeing? - This will not get you
> in the Ultrapenguin install, but ultrapenguin will be updated ASAP if
> this works...

It doesn't fix them but there's more debugging telemetry for you:

ebus0: ...
ebus1: ...
'auxio': addresses
fffff9fff1726000
fffff9fff1728000
fffff9fff172a000
fffff9fff172c000
fffff9fff172f000
'power':address
fffff9fff1724000
IRQ c2800025
'SUNW,pll:
fffff9fff1504000
se: fffff9fff1400000
IRQ c580002b
su: fffff9fff13083f8
IRQ c500002a
ecpp: fffff9fff13043bc
fffff9fff130015c
fffff9fff1700000
IRQ c1000022
fdthree: fffff9fff13023f0
fffff9fff1706000
720000
IRQ c3800027
eeprom: fffff9fff1000000
flashprom: fffff9fff0000000 (sic for the f0)
SUNW,CS4231: fffff9fff1200000
fffff9fff1702000
fffff9fff1704000
fffff9fff1722000
IRQs c1800023 c2000024
mach64_init: IOBASE...
mach64_init: chip_type...
bug in for_each_ebusdev, bus 0000000000000000


Thenn, overlayed on the top of the screen by the SUN prom:

Cannot find auxio node, cannot continue...
Program terminated
ok



The owner of the box is wanting to put Solaris on it early next week
so I still have a day or two in which to try things. In case it helps,
the SCSI+ethernet card is the hme (not mentioned above). Thanks for
the quick turnaround for this test kernel.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
