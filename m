From: Alberto Brealey <beto@alpha.ulatina.ac.cr>
Date: Fri, 24 Jul 1998 17:22:18 +0000
Subject: problems booting an Ultra5...
Message-Id: <marc-linux-ultrasparc-90222358531074@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


trying to install UP-1.0.9 in an ultra5 PCI, IDE hd... it boots via tftp
fine, but when it gets to the IDE probing part it just dies...

last mesgs:

<-- snip -->

CMD646: IDE controller on PCI bus 01 dev 18
CMD646: 100% native mode on irq c00007e0
	ide0: BM-DMA at 0xfffff9fe02c00020-0xfffff9fe02c00027, BIOS
settings: hda:pio, hdb:pio
        ide0: BM-DMA at 0xfffff9fe02c00028-0xfffff9fe02c0002f, BIOS
settings: hdc: pio, hdd:pio
hda: ST34342A, ATA DISK drive
hdc: CRD-8240B, ATAPI CDROM drive
ide0 at 0x2c00000-0x2c00007,0x2c0000a on irq -1073739808
ide1 at 0x2c00010-0x2c00017,0x2c0001a on irq -1073739808 (shared with
ide0)
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0) STAT(d0) STAT(d0) STAT(d0) DMA_CAP DONE]
hda: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait   =20
STAT(d0) STAT(d0) STAT(d0) STAT(d0) DMA_CAP DONE]
hdc: packet command error: status=3D0xd0 { Busy }


<--- then it just dies... --->

i remember seeing a message from someone with similar probs.. but can't
find it :(

thanks for your help,

alberto
