From: Eric Brower <ebrower@usa.net>
Date: Thu, 11 Dec 2003 18:56:57 +0000
Subject: Re: netra t4
Message-Id: <marc-linux-ultrasparc-107116926821240@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Johan Verrept sent a patch to this list and DaveM on 26.Jan.2003 for=20
proper booting on the T4, but it apparently never made it into the=20
kernel sources (as per bkbits).  It does not specifically address the=20
SAB issue, but does address the fill_ebus_child issue.

http://lists.debian.org/debian-sparc/2003/debian-sparc-200301/msg00149.html


E

VEGH Karoly wrote:
> On Thu, Dec 11, 2003 at 08:53:03AM -0500, Ben Collins wrote:
>=20
>>>>This seems to be a problem with the serial console driver in the kernel.
>>>>What images are you using?=20
>>>
>>>from ftp.debian.org:
>>
>>Try the images here:
>>
>>http://www.phunnypharm.org/pub/for/sparc-folks/disks-sparc/current/
>=20
>=20
> tried: http://www.phunnypharm.org/pub/for/sparc-folks/disks-sparc/current=
/sparc64/tftpboot.img
>=20
> 1: booting with a simple 'boot net'
>=20
> -----------------
>=20
> ok boot net
> Boot device: /pci@8,700000/network@5,1:  File and args:              =20
> Timeout waiting for ARP/RARP packet
> 535400=20
> Remapping the kernel... done.
> Booting Linux...
> UGH: property for SUNW,lomv was 24, need < 1
>=20
> -------------------
>=20
> as for the last line, I found the following URL:
>=20
> http://lists.debian.org/debian-sparc/2003/debian-sparc-200302/msg00034.ht=
ml
>=20
>=20
>=20
> 2: booting with 'boot net linux -p'
>=20
> --------------------
>=20
> ok boot net linux -p                                                     =
                    =20
> Boot device: /pci@8,700000/network@5,1:  File and args: linux -p         =
                    =20
> Timeout waiting for ARP/RARP packet                                      =
                    =20
> 535400                                                                   =
                    =20
> PROMLIB: Sun IEEE Boot Prom 4.2.4 2001/06/13 10:10
> <4>Linux version 2.4.21 (root@blimpo) (gcc version 3.3.2 (Debian)) #1 Sat=
 Nov 29 15:40:07 EST 2003
> <4>ARCH: SUN4U
> Linux version 2.4.21 (root@blimpo) (gcc version 3.3.2 (Debian)) #1 Sat No=
v 29 15:40:07 EST 2003
> <4>ARCH: SUN4U
> ARCH: SUN4U
> Ethernet address: 00:03:ba:0f:6c:fb
> Remapping the kernel... done.
> On node 0 totalpages: 195776
> zone(0): 196447 pages.
> zone(1): 0 pages.
> zone(2): 0 pages.
> Booting Linux...
> Found CPU 0 (node=F006fb30,mid=3D0)
> Found 1 CPU prom device tree node(s).
> Kernel command line: linux -p
> Calibrating delay loop... 499.71 BogoMIPS
> Memory: 1547720k available (2504k kernel code, 576k data, 184k init) [fff=
ff80000000000,000000005febe000]
> Dentry cache hash table entries: 262144 (order: 9, 4194304 bytes)
> Inode cache hash table entries: 131072 (order: 8, 2097152 bytes)
> Mount cache hash table entries: 512 (order: 0, 8192 bytes)
> Buffer-cache hash table entries: 131072 (order: 7, 1048576 bytes)
> Page-cache hash table entries: 262144 (order: 8, 2097152 bytes)
> POSIX conformance testing by UNIFIX
> PCI: Probing for controllers.
> SCHIZO0 PBMB: ver[4:0], portid 8, cregs[40004400000] pregs[40004700000]
> SCHIZO0 PBMB: PCI CFG[7ffee000000] IO[7ffef000000] MEM[7fe00000000]
> SCHIZO0 PBMA: ver[4:0], portid 8, cregs[40004400000] pregs[40004600000]
> SCHIZO0 PBMA: PCI CFG[7ffec000000] IO[7ffed000000] MEM[7fd00000000]
> PCI-IRQ: Routing bus[ 0] slot[ 5] map[0] to INO[1d]
> PCI-IRQ: Routing bus[ 0] slot[ 5] map[0] to INO[1f]
> PCI-IRQ: Routing bus[ 0] slot[ 6] map[0] to INO[18]
> PCI-IRQ: Routing bus[ 0] slot[ 6] map[0] to INO[19]
> PCI0(PBMB): Bus running at 33MHz
> PCI-IRQ: Routing bus[ 1] slot[ 4] map[0] to INO[04]
> PCI-IRQ: Routing bus[ 2] slot[ 0] map[1] to INO[01]
> PCI-IRQ: Routing bus[ 2] slot[ 1] map[1] to INO[02]
> PCI-IRQ: Routing bus[ 2] slot[ 2] map[1] to INO[03]
> PCI-IRQ: Routing bus[ 2] slot[ 3] map[1] to INO[00]
> PCI0(PBMA): Bus running at 66MHz
> ebus0: [flashprom] [bbc] [power] [i2c -> (dimm-fru) (dimm-fru) (dimm-fru)=
 (dimm-fru) (dimm-fru) (dimm-fru) (dimm-fru) (1
> <0>Kernel panic: fill_ebus_child
>  Press L1-A to return to the boot prom
>=20
> ---------------------------
>=20
>=20
> hope this tells you more than it does to me...=20
>=20
> thanks for the help,
>=20
>=20
> charlie
>=20
>=20

