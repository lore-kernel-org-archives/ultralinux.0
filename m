From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Mon, 18 May 1998 18:07:43 +0000
Subject: Kernel  problem
Message-Id: <marc-linux-ultrasparc-90222356531051@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

some problem with kernel 2.1.102
:

CMD646: IDE controller on PCI bus 01 dev 18
CMD646: 100% native mode on irq c00007e0
    ide0: BM-DMA at 0xfffff9fe02c00020-0xfffff9fe02c00027, BIOS settings:
hda:pi
o, hdb:pio
    ide1: BM-DMA at 0xfffff9fe02c00028-0xfffff9fe02c0002f, BIOS settings:
hdc:pi
o, hdd:pio
hda: ST34342A, ATA DISK drive
hdb: ST34342A, ATA DISK drive
hdc: CRD-8240B, ATAPI CDROM drive
ide0 at 0x2c00000-0x2c00007,0x2c0000a on irq -1073739808
ide1 at 0x2c00010-0x2c00017,0x2c0001a on irq -1073739808 (shared with
ide0)
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0)
STAT(d0) STAT(d0) STAT(50) DMA_CAP DONE]
hda: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0)
STAT(d0) STAT(d0) STAT(50) DMA_CAP DONE]
hdb: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [DMA_CAP DONE]
hdc: ATAPI 0X CDROM drive, 0kB Cache                            =20

0 speed cdrom and 0kb cache ?
with kernel 2.1.101
it detected a 24speed (with 128kb cache?) but it said it was a cdrom
changer

and :
su(kbd) at fffff9fff13083f8 (irq =3D c4800029) is a 16550A
Sun TYPE 4 keyboard detected without keyclick
su(mouse) at fffff9fff13062f8 (irq =3D c500002a) is a 16550A      =20

it's an type 5 keyboard
and i don't have a mouse on it.


also all that weird irq's=20
what about it ?
