From: Matthew Jacob <mjacob@feral.com>
Date: Thu, 01 Apr 1999 18:20:52 +0000
Subject: Re: Dual Boot
Message-Id: <marc-linux-ultrasparc-92299121615798@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92299065815344@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92299065815344@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 1 Apr 1999, William Bradley wrote:

> Is it possible to setup dual boot for Solaris and Linux with two
> drives?  The Sun page gives instructions but only mentions partitioning
> one drive.
> Has anyone messed with this?

It works fine for me


ok boot disk3 2.2.5^M
Boot device: /pci@1f,4000/scsi@3/disk@3,0  File and args: 2.2.5^M
SILO ^M
Uncompressing image...^M
\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^
H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|
^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H
\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^
H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|
^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H
\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^
H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H^M
Booting Linux...^M
PROMLIB: Sun IEEE Boot Prom 3.9.5 1997/04/11 10:03^M
Linux version 2.2.5 (mjacob@slinx.feral.com) (gcc version egcs-2.92.11
19980921
(gcc2 ss-980609 experimental)) #8 Wed Mar 31 10:56:26 PST 1999^M
ARCH: SUN4U^M
Ethernet address: 08:00:20:82:62:f3^M
Calibrating delay loop... 591.46 BogoMIPS^M
Memory: 191528k available (1240k kernel code, 2888k data, 112k init)
[fffff80000
000000,fffff80023f32000]^M
POSIX conformance testing by UNIFIX^M
PCI: Probing for controllers.^M
PCI: Found PSYCHO version 0x3, main regs at fffff9fe00000000^M
PSYCHO: PCI config space at fffff9fe01000000^M

....


k boot disk0 /platform/sun4u/kadb -v^M
Boot device: disk0:a  File and args: /platform/sun4u/kadb -v^M
|^HSize: 158838+/^H-^H\^H|^H/^H240295+-^H\^H|^H/^H-^H\^H|^H184857 Bytes^M
kadb: kernel/sparcv9/unix^M
/^HSize:
-^H\^H|^H/^H-^H\^H|^H446164+/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H1
15040+\^H|^H/^H-^H159224 Bytes^M
\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H/platform/sun4u/kernel/sparcv9/unix
loaded - 0x
f8000 bytes used^M
-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^
H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\
^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^Hcpu0:
SUNW,UltraSPARC
-II (upaid 0 impl 0x11 ver 0x11 clock 296 MHz)^M
^MSunOS Release 5.7 Version Generic 64-bit [UNIX(R) System V Release
4.0]^M
Copyright (c) 1983-1998, Sun Microsystems, Inc.^M
DEBUG enabled^M
\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^Hobpsym:
symbolic
debugging is available.^M
|^H/^H-^H\^H|^HRead 141852 bytes from misc/forthdebug^M
/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^
H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-
^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^H
/^H-^H\^H|^H/^H-^H\^H|^H/^H-^H\^H|^Hmem = 195616K (0xbf08000)^M
avail mem = 172449792^M
Ethernet address = 8:0:20:82:62:f3^M
root nexus = Sun Ultra 30 UPA/PCI (UltraSPARC-II 296MHz)^M
pci0 at root: UPA 0x1f 0x4000^M
pci0 is /pci@1f,4000^M
pci1 at root: UPA 0x1f 0x2000^M
pci1 is /pci@1f,2000^M
/pci@1f,4000/scsi@3 (glm0):^M^M
        Rev. 3 Symbios 53c875 found.^M^M^M
