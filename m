From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Fri, 24 Jul 1998 17:43:18 +0000
Subject: Re: problems booting an Ultra5...
Message-Id: <marc-linux-ultrasparc-90222358531075@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531074@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531074@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

try to disconnect your cdrom=20

here my cdrom also does not work (ultra 10)

just gives on boot :


eth2: DE450-CA at 0xfffff9fe02002000 (PCI bus 2, device 3), h/w address
00:00:f8:30:79:49,
    ide0: BM-DMA at 0xfffff9fe02c00020-0xfffff9fe02c00027, BIOS settings:
hda:pi
o, hdb:pio
    ide1: BM-DMA at 0xfffff9fe02c00028-0xfffff9fe02c0002f, BIOS settings:
hdc:pi
o, hdd:pio
hda: ST34342A, ATA DISK drive
hdb: ST34321A, ATA DISK drive
hdc: CRD-8240B, ATAPI CDROM drive
ide0 at 0x2c00000-0x2c00007,0x2c0000a on irq 3,7e0
ide1 at 0x2c00010-0x2c00017,0x2c0001a on irq 3,7e0 (shared with ide0)
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0)
STAT(d0) STAT(d0) STAT(50) DMA_CAP DONE]
hda: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0)
STAT(d0) STAT(50) DMA_CAP DONE]
hdb: ST34321A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [DMA_CAP DONE]
hdc: ATAPI 0X CDROM drive, 0kB Cache
Uniform CD-ROM driver Revision: 2.12


so 0 speed, not ok

and when to try mounting an iso 9660 cdrom

:

mount /dev/hdc /mnt/cdrom=20


ATAPI device hdc:
  Unknown Error Type: No sense data -- (Sense key=3D0x00)
  Medium not present -- (asc=3D0x3a, ascq=3D0x00)
  The failed "Test Unit Ready" packet command was:
  "00 00 00 00 00 00 00 00 00 00 00 00 "
cdrom: open failed.                  =20


(this is kernel 2.1.106)

2.1.109 just dies on booting (bad video i think, cause i see big letter
for about 2sec)

On Fri, 24 Jul 1998,
Alberto
Brealey wrote:

>=20
> trying to install UP-1.0.9 in an ultra5 PCI, IDE hd... it boots via tftp
> fine, but when it gets to the IDE probing part it just dies...
>=20
> last mesgs:
>=20
> <-- snip -->
>=20
> CMD646: IDE controller on PCI bus 01 dev 18
> CMD646: 100% native mode on irq c00007e0
> 	ide0: BM-DMA at 0xfffff9fe02c00020-0xfffff9fe02c00027, BIOS
> settings: hda:pio, hdb:pio
>         ide0: BM-DMA at 0xfffff9fe02c00028-0xfffff9fe02c0002f, BIOS
> settings: hdc: pio, hdd:pio
> hda: ST34342A, ATA DISK drive
> hdc: CRD-8240B, ATAPI CDROM drive
> ide0 at 0x2c00000-0x2c00007,0x2c0000a on irq -1073739808
> ide1 at 0x2c00010-0x2c00017,0x2c0001a on irq -1073739808 (shared with
> ide0)
> CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
> STAT(d0) STAT(d0) STAT(d0) STAT(d0) DMA_CAP DONE]
> hda: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
> CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait   =
=20
> STAT(d0) STAT(d0) STAT(d0) STAT(d0) DMA_CAP DONE]
> hdc: packet command error: status=3D0xd0 { Busy }
>=20
>=20
> <--- then it just dies... --->
>=20
> i remember seeing a message from someone with similar probs.. but can't
> find it :(
>=20
> thanks for your help,
>=20
> alberto
>=20
>=20
