From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Sun, 26 Jul 1998 09:42:06 +0000
Subject: Re: problems booting an Ultra5...
Message-Id: <marc-linux-ultrasparc-90222358531086@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531074@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531074@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 25 Jul 1998, David S. Miller wrote:

>    Date: 	Fri, 24 Jul 1998 19:43:18 +0200 (CEST)
>    From: Stephan van Hienen <ddx@cable.a2000.nl>
> 
>    try to disconnect your cdrom 
> 
>    here my cdrom also does not work (ultra 10)
> 
>    just gives on boot :
> 
> These boot problems should not show up with the latest CVS kernel.
> 
>    mount /dev/hdc /mnt/cdrom 
> 
>    ATAPI device hdc:
>      Unknown Error Type: No sense data -- (Sense key=0x00)
>      Medium not present -- (asc=0x3a, ascq=0x00)
>      The failed "Test Unit Ready" packet command was:
>      "00 00 00 00 00 00 00 00 00 00 00 00 "
>    cdrom: open failed.                   
> 
>    (this is kernel 2.1.106)
> 
>    2.1.109 just dies on booting (bad video i think, cause i see big letter
>    for about 2sec)
> 
> Here I get a total lockup and as mentioned I am looking into this.
> 
> I would also suggest trying the latest CVS on sparc64 to see if the
> video problem goes away, it should no longer be present but if it is
> we want to know about it and get the information necessary from you to
> begin working on a fix.
ok compiled 2.1.111
and booted it

the video console is not working

just dies after loading kernel
but rest is loading ok now (i don't use console)

beginning from dmesg :

PCI: Probing for controllers.
PCI: Found SABRE, main regs at fffff9fe00000000
SABRE: PCI config space at fffff9fe01000000
SABRE: DVMA at c0000000 [20000000]
PCI: Probing PCI hardware
ebus0: fffff9ff00000000[1000000] fffff9ff00000000[800000]
ebus1: fffff9fff0000000[1000000] fffff9fff1000000[800000]
Console: colour dummy device 80x25
Calibrating delay loop... 598.02 BogoMIPS
VFS: Diskquotas version dquot_6.4.0 initialized
POSIX conformance testing by UNIFIX
Swansea University Computer Society NET3.039 for Linux 2.1
NET3: Unix domain sockets 0.16 for Linux NET3.038.
Swansea University Computer Society TCP/IP for NET3.037
IP Protocols: ICMP, UDP, TCP
Initializing RT netlink socket
Starting kswapd v 1.5
atyfb: 3D RAGE (GT) [0x4754 rev 0x9a] 200 MHz PLL, 67 Mhz MCLK
Console: switching to colour frame buffer device 144x56
fb0: ATY Mach64GT frame buffer device on PCI
kbd/mouse serial driver version 1.0
su(kbd) at fffff9fff13083f8 (irq = 9,7e9) is a 16550A
Sun TYPE 5 keyboard detected without keyclick               
su(mouse) at fffff9fff13062f8 (irq = 4,7ea) is a 16550A
SAB82532 serial driver version 1.20
ttyS00 at 0xfffff9fff1400000 (irq = 12,7eb) is a SAB82532 V3.2
ttyS01 at 0xfffff9fff1400040 (irq = 12,7eb) is a SAB82532 V3.2
Sun Mouse-Systems mouse driver version 1.00
RAM disk driver initialized:  16 RAM disks of 4096K size               


but :

hdc: ATAPI 0X CDROM drive, 0kB Cache
Uniform CD-ROM driver Revision: 2.12      

still 0 speed

also this is weird :

sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)
eth0: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet 08:00:20:96:18:b0
eth1: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet 08:00:20:96:18:b0
eth2: DE450-CA at 0xfffff9fe02002000 (PCI bus 2, device 3), h/w address
00:00:f8
:30:79:49,
      and requires IRQ654040 (provided by PCI BIOS).
de4x5.c:V0.540 1998/7/5 davies@maniac.ultranet.com
eth3: region already allocated at 0xfffff9fe02002000.
eth3: DE450-CA at 0xfffff9fe02002080 (PCI bus 2, device 4), h/w address
00:00:f8
:31:e1:e4,
      and requires IRQ654050 (provided by PCI BIOS).
de4x5.c:V0.540 1998/7/5 davies@maniac.ultranet.com
eth4: region already allocated at 0xfffff9fe02002000.
eth4: region already allocated at 0xfffff9fe02002080.
eth4: region already allocated at 0xfffff9fe02002000.
eth4: region already allocated at 0xfffff9fe02002080.
eth5: region already allocated at 0xfffff9fe02002000.
eth5: region already allocated at 0xfffff9fe02002080.
eth6: region already allocated at 0xfffff9fe02002000.
eth6: region already allocated at 0xfffff9fe02002080.
eth7: region already allocated at 0xfffff9fe02002000.
eth7: region already allocated at 0xfffff9fe02002080.    
