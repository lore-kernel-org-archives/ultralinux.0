From: "Mark J. Steiglitz" <steig@DSG.Stanford.EDU>
Date: Mon, 15 Jun 1998 22:44:32 +0000
Subject: Linux de4x5 driver bug?
Message-Id: <marc-linux-ultrasparc-90222357631021@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am running UltraLinux 1.0.9 with kernel version 2.1.105 on a Sun Ultra 5.
The system contains a Znyx ZX346 4-port 10/100 ethernet card, which is
recognized by the de4x5 driver.

The first port of the card operates properly, but the other three ports either
fail to receive any packets, or exhibit extremely poor performance, with delays
of approximately 2 seconds just to receive a packet from the same ethernet.

Other minor problems which may be related are that "ifconfig -a" shows
incorrect values for various packet counters for any interface corresponding to
any Znyx ZX346 port, and that "netstat -i" reports "unknown interface" for any
interface.

The following messages are displayed on the console when doing a
modprobe de4x5 :

kernel: loading device 'eth1'...
kernel: eth1: DC21140 at 0xfffff9fe02001000 (PCI bus 3, device 4), h/w address 00:c0:95:e0:2e:28,
kernel: eth1: Using generic MII device control. If the board doesn't operate, 
kernel: please mail the following dump to the author:
kernel: 
kernel: MII device address: 1
kernel: MII CR:  3000
kernel: MII SR:  7809
kernel: MII ID0: 15
kernel: MII ID1: f423
kernel: MII ANA: 1e1
kernel: MII ANC: 0
kernel: MII 16:  58
kernel: MII 17:  85e8
kernel: MII 18:  10
kernel: 
kernel:       and requires IRQ608060 (provided by PCI BIOS).
kernel: de4x5.c:V0.536 1998/3/5 davies@maniac.ultranet.com
kernel: loading device 'eth2'...
kernel: eth2: DC21140 at 0xfffff9fe02001080 (PCI bus 3, device 5), h/w address 00:c0:95:e0:2e:29,
kernel: eth2: Using generic MII device control. If the board doesn't operate, 
kernel: please mail the following dump to the author:
kernel: 
kernel: MII device address: 1
kernel: MII CR:  3000
kernel: MII SR:  7809
kernel: MII ID0: 15
kernel: MII ID1: f423
kernel: MII ANA: 1e1
kernel: MII ANC: 0
kernel: MII 16:  58
kernel: MII 17:  85e8
kernel: MII 18:  10
kernel: 
kernel:       and requires IRQ608070 (provided by PCI BIOS).
kernel: de4x5.c:V0.536 1998/3/5 davies@maniac.ultranet.com
kernel: loading device 'eth3'...
kernel: eth3: DC21140 at 0xfffff9fe02001400 (PCI bus 3, device 6), h/w address 00:c0:95:e0:2e:2a,
kernel: eth3: Using generic MII device control. If the board doesn't operate, 
kernel: please mail the following dump to the author:
kernel: 
kernel: MII device address: 1
kernel: MII CR:  3000
kernel: MII SR:  7809
kernel: MII ID0: 15
kernel: MII ID1: f423
kernel: MII ANA: 1e1
kernel: MII ANC: 0
kernel: MII 16:  58
kernel: MII 17:  85e8
kernel: MII 18:  10
kernel: 
kernel:       and requires IRQ608080 (provided by PCI BIOS).
kernel: de4x5.c:V0.536 1998/3/5 davies@maniac.ultranet.com
kernel: loading device 'eth4'...
kernel: eth4: DC21140 at 0xfffff9fe02001480 (PCI bus 3, device 7), h/w address 00:c0:95:e0:2e:2b,
kernel: eth4: Using generic MII device control. If the board doesn't operate, 
kernel: please mail the following dump to the author:
kernel: 
kernel: MII device address: 1
kernel: MII CR:  3000
kernel: MII SR:  7809
kernel: MII ID0: 15
kernel: MII ID1: f423
kernel: MII ANA: 1e1
kernel: MII ANC: 0
kernel: MII 16:  58
kernel: MII 17:  85e8
kernel: MII 18:  10
kernel: 
kernel:       and requires IRQ608090 (provided by PCI BIOS).
kernel: de4x5.c:V0.536 1998/3/5 davies@maniac.ultranet.com

--Mark
