From: ebrower@usa.net
Date: Thu, 19 Nov 1998 20:27:36 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91155331807414@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


> Ok thanks, now grab the tftpboot image from:
>=20
> ftp.cobaltnet.com:/pub/users/davem/for_ebrower/e4000test.img
>=20
> and tftpboot that and send me the console output, it may be lengthy.
>=20
> If it works and detects your disks, it will be a step in the right
> direction, but this image is not an install image, just a kernel by
> itself so it will die when it tries to mount root even if the device
> probing works :-)
>=20
> Let me know how it goes.

Here's the output from the kernel:

E

---
{0} ok boot net
Boot device: /sbus@3,0/SUNW,hme@3,8c00000  File and args:=20
root child is f002cf50
Found CPU 0 (node=F006f708,mid=3D0)
Found CPU 1 (node=F006fac8,mid=3D1)
Found CPU 2 (node=F014f6e4,mid=3D4)
Found CPU 3 (node=F014faa4,mid=3D5)
Found CPU 4 (node=F022f6e4,mid=3D8)
Found CPU 5 (node=F022faa4,mid=3D9)
Found CPU 6 (node=F030f6e4,mid=12)
Found CPU 7 (node=F030faa4,mid=13)
PROMLIB: Sun IEEE Boot Prom 3.2.16 1998/06/08 16:58
Linux version 2.1.129 (davem@pizda.cobaltnet.com) (gcc driver version 2.7.2=
=20
snapshot 970621 executing gcc version 2.7.2) #4 SMP Thu Nov 19 12:41:20 PST=
 1998
ARCH: SUN4U
Ethernet address: 08:00:20:9a:71:d5
Found CPU 0 (node=F006f708,mid=3D0)
Found CPU 1 (node=F006fac8,mid=3D1)
Found CPU 2 (node=F014f6e4,mid=3D4)
Found CPU 3 (node=F014faa4,mid=3D5)
Found CPU 4 (node=F022f6e4,mid=3D8)
Found CPU 5 (node=F022faa4,mid=3D9)
Found CPU 6 (node=F030f6e4,mid=12)
Found CPU 7 (node=F030faa4,mid=13)
Found 8 CPU prom device tree node(s).
CENTRAL: found central PROM node f005df90.
FHC Version[1] PartID[fa0] Manufacturer[3e]
Calibrating delay loop... 494.80 BogoMIPS
Memory: 1022408k available (1616k kernel code, 12000k data, 160k init)=20
[fffff80000000000,fffff8003fcd8000]
POSIX conformance testing by UNIFIX
Entering UltraSMPenguin Mode...
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Calibrating delay loop... 494.80 BogoMIPS
Total of 8 processors activated (3958.37 BogoMIPS).
PCI: Probing for controllers.
PCI: No PCI bus detected
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9c600000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[0000000000d78400] ... ENAB=
LED
sbus0: Clock 25.0 MHz
dma0: HME DVMA gate array=20
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9cc00000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[0000000000d78520] ... ENAB=
LED
sbus1: Clock 25.0 MHz
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9ce00000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[0000000000d785e0] ... ENAB=
LED
sbus2: Clock 25.0 MHz
dma1: HME DVMA gate array=20
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9d400000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[0000000000d78700] ... ENAB=
LED
sbus3: Clock 25.0 MHz
IOMMU(SBUS): IMPL[0] VERS[0] SYSIO mapped at fffff9d600000000
IOMMU: Streaming Buffer IMPL[0] REV[0] FlushFLAG[0000000000d787c0] ... ENAB=
LED
sbus4: Clock 25.0 MHz
dma2: HME DVMA gate array=20
Swansea University Computer Society NET3.039 for Linux 2.1
NET3: Unix domain sockets 0.16 for Linux NET3.038.
Swansea University Computer Society TCP/IP for NET3.037
IP Protocols: ICMP, UDP, TCP
Starting kswapd v 1.5=20
Sparc Zilog8530 serial driver version 1.32
tty00 at 0xfff66004 (irq =3D 12,339) is a Zilog8530
tty01 at 0xfff66000 (irq =3D 12,339) is a Zilog8530
tty02 at 0xffd9e004 (irq =3D 12,339) is a Zilog8530
tty03 at 0xffd9e000 (irq =3D 12,339) is a Zilog8530
keyboard: not present
Console: ttyS0 (Zilog8530)
Sun Mouse-Systems mouse driver version 1.00
RAM disk driver initialized:  16 RAM disks of 4096K size
md driver 0.36.6 MAX_MD_DEV=3D4, MAX_REAL=3D8
esp0: IRQ 7,db SCSI ID 7  Clock 40 MHz CCF=3D8 Time-Out 167 NCR53C9XF(espfa=
st)=20
detected
esp0: FAST chip is fasHME (family=10, version=3D5)
esp1: IRQ 7,1db SCSI ID 7  Clock 40 MHz CCF=3D8 Time-Out 167 NCR53C9XF(espf=
ast)=20
detected
esp1: FAST chip is fasHME (family=10, version=3D5)
esp2: IRQ 7,2db SCSI ID 7  Clock 40 MHz CCF=3D8 Time-Out 167 NCR53C9XF(espf=
ast)=20
detected
esp2: FAST chip is fasHME (family=10, version=3D5)
ESP: Total of 3 ESP hosts found, 3 actually in use.
scsi0 : Sparc ESP366-HME
scsi1 : Sparc ESP366-HME
scsi2 : Sparc ESP366-HME
scsi : 3 hosts.
scsi : detected total.
sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)
eth0: HAPPY MEAL (SBUS) 10/100baseT Ethernet 08:00:20:9a:71:d5=20
eth1: HAPPY MEAL (SBUS) 10/100baseT Ethernet 08:00:20:9a:71:d5=20
eth2: HAPPY MEAL (SBUS) 10/100baseT Ethernet 08:00:20:9a:71:d5=20
Partition check:
VFS: Cannot open root device 00:00
Kernel panic: VFS: Unable to mount root fs on 00:00
Press L1-A to return to the boot prom
