From: ebrower@usa.net
Date: Tue, 17 Nov 1998 21:16:28 +0000
Subject: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91139210917441@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I've managed access to an Ultra Enterprise 4000 for an unknown
duration-- a day, a week, a month-- basically until it is needed.

I MAY be suffering from the same memory-slot problem as described
by Svante Sormark earlier today on the list.

I've attempted to install UltraPenguin-1.1 from Jakub's CD image,
but to no avail.  I'll be happy to put some spare-time work into
getting this puppy running Linux, but I'll probably need some
divine intervention regarding the following boot-sequence error
message.  Here's the entire boot sequence, with the error and banner
info at the end.
  
I MAY be suffering from the same memory-slot problem as described
by Svante Sormark earlier today on the list.
To make a long story short, I get the following:

	Partition check:
	request_module[block-major-11]: Root fs not mounted
	VFS: Cannot open root device 0b:00
	Kernel panic: VFS: Unable to mount root fs on 0b:00
	Press L1-A to return to the boot prom
	
At times, the boot gets one stage further and lists the partitions
found on the disks.

Here's the works:
-----------------

{0} ok boot cdrom
Boot device: /sbus@3,0/SUNW,fas@3,8800000/sd@6,0:f  File and args: 
SILO 

Welcome to UltraPenguin Linux!

You have just booted to the SILO prompt on a SUN4U 8-slot Sun Enterprise 
4000/5000.

You probably just need to hit "Enter" and you will have the install
loaded soon.

boot: 
Uncompressing image...

root child is f002cf50
PROMLIB: Sun IEEE Boot Prom 3.2.16 1998/06/08 16:58
Linux version 2.1.126 (root@manka) (gcc version egcs-2.92.07 19980915 (gcc2 
ss-980609 experimental)) #1 Wed Nov 4 20:30:31 1998
ARCH: SUN4U
Ethernet address: 08:00:20:xx:xx:xx
CENTRAL: found central PROM node f005df90.
FHC Version[1] PartID[fa0] Manufacturer[3e]
Calibrating delay loop... 494.80 BogoMIPS
initrd overwritten (0xfffff80000990000 < 0xfffff80000d2a358) - disabling it.
Memory: 1022912k available (1304k kernel code, 11968k data, 128k init) 
[fffff80000000000,fffff8003fcf8000]
POSIX conformance testing by UNIFIX
PCI: Probing for controllers.
PCI: No PCI bus detected
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9c600000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[000000003fcf20a0] ... ENABLED
sbus0: Clock 25.0 MHz
dma0: HME DVMA gate array 
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9cc00000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[000000003fcf21c0] ... ENABLED
sbus1: Clock 25.0 MHz
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9ce00000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[000000003fcf2280] ... ENABLED
sbus2: Clock 25.0 MHz
dma1: HME DVMA gate array 
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9d400000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[000000003fcf23a0] ... ENABLED
sbus3: Clock 25.0 MHz
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9d600000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[000000003fcf2460] ... ENABLED
sbus4: Clock 25.0 MHz
dma2: HME DVMA gate array 
Swansea University Computer Society NET3.039 for Linux 2.1
NET3: Unix domain sockets 0.16 for Linux NET3.038.
Swansea University Computer Society TCP/IP for NET3.037
IP Protocols: ICMP, UDP, TCP
Starting kswapd v 1.5 
Sparc Zilog8530 serial driver version 1.31
tty00 at 0xfff66004 (irq = 12,39) is a Zilog8530
tty01 at 0xfff66000 (irq = 12,39) is a Zilog8530
tty02 at 0xffd9e004 (irq = 12,39) is a Zilog8530
tty03 at 0xffd9e000 (irq = 12,39) is a Zilog8530
keyboard: not present
Console: ttyS0 (Zilog8530)
Sun Mouse-Systems mouse driver version 1.00
RAM disk driver initialized:  16 RAM disks of 4096K size
md driver 0.36.6 MAX_MD_DEV=4, MAX_REAL=8
esp0: IRQ 7,db SCSI ID 7  Clock 40 MHz CCF=8 Time-Out 167 NCR53C9XF(espfast) 
detected
esp0: FAST chip is fasHME (family, version=5)
esp1: IRQ 7,1db SCSI ID 7  Clock 40 MHz CCF=8 Time-Out 167 NCR53C9XF(espfast) 
detected
esp1: FAST chip is fasHME (family, version=5)
esp2: IRQ 7,2db SCSI ID 7  Clock 40 MHz CCF=8 Time-Out 167 NCR53C9XF(espfast) 
detected
esp2: FAST chip is fasHME (family, version=5)
ESP: Total of 3 ESP hosts found, 3 actually in use.
scsi0 : Sparc ESP366-HME
scsi1 : Sparc ESP366-HME
scsi2 : Sparc ESP366-HME
scsi : 3 hosts.
scsi : detected total.
Partition check:
request_module[block-major-11]: Root fs not mounted
VFS: Cannot open root device 0b:00
Kernel panic: VFS: Unable to mount root fs on 0b:00
Press L1-A to return to the boot prom

Type  'go' to resume
{0} ok 
{0} ok banner

8-slot Sun Enterprise 4000/5000, No Keyboard
OpenBoot 3.2.16, 1024 MB memory installed, Serial #xxxxxxxx.
Ethernet address x:x:xx:xx:xx:xx, Host ID: xxxxxxxx.
