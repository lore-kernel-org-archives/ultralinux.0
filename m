From: Stephan van Hienen <s.v.hienen@cable.a2000.nl>
Date: Thu, 14 May 1998 00:27:58 +0000
Subject: 2 weird problems (second ide)
Message-Id: <marc-linux-ultrasparc-90222356531026@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

and now ide :

hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }
hda: dma_intr: error=3D0x40 { UncorrectableError }, LBAsect=131139,
sector=131138
end_request: I/O error, dev 03:01 (ide), sector 131138
EXT2-fs error (device 03:01): ext2_read_inode: unable to read inode
block - inode=16496,
blocke569                                            =20


and i get this lot of times

i think the hd is not set ok somewhere

(internal seagate 4gb with sun ultra sparc 10)

here some info :

CMD646: IDE controller on PCI bus 01 dev 18
CMD646: 100% native mode on irq c00007e0
    ide0: BM-DMA at 0xfffff9fe02c00020-0xfffff9fe02c00027, BIOS
settings: hda:pio, hdb:pio
    ide1: BM-DMA at 0xfffff9fe02c00028-0xfffff9fe02c0002f, BIOS
settings: hdc:pio, hdd:pio
hda: ST34342A, ATA DISK drive
hdb: ST34342A, ATA DISK drive
ide0 at 0x2c00000-0x2c00007,0x2c0000a on irq -1073739808
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0) STAT(d0) STAT(50) DMA_CAP DONE]
hda: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA
CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
STAT(d0) STAT(d0) STAT(d0) STAT(50) DMA_CAP DONE]
hdb: ST34342A, 4103MB w/128kB Cache, CHS=8894/15/63, DMA           =20

Partition check:
 hda: hda1 hda2 hda3
 hdb:             =20


(second hd not used for now)


[root@sun /root]# fdisk
Using /dev/hda as default device!
The number of cylinders for this disk is set to 8894.
This is larger than 1024, and may cause problems with:
1) software that runs at boot time (e.g., LILO)
2) booting and partitioning software form other OSs
   (e.g., DOS FDISK, OS/2 FDISK)

Command (m for help): p

Disk /dev/hda (Sun disk label): 15 heads, 63 sectors, 8892 cylinders
Units =3D cylinders of 945 * 512 bytes

   Device Flag   Begin    Start      End   Blocks   Id  System
/dev/hda1            0        0     8784  4150440   83  Linux native
/dev/hda2  u      8784     8784     8892    51030   82  Linux swap
/dev/hda3            0        0     8892  4201470    5  Whole disk   =20

Command (m for help): s


   0   custom (with hardware detected defaults)

Select type (? for auto, 0 for custom): 0
Heads (1-[15]-1024):
Sectors/track (1-[63]-1024):
Cylinders (1-[8892]-65535):
Alternate cylinders (0-[2]-65535):
Physical cylinders (0-[8894]-65535):
Rotation speed (rpm) (1-[5400]-100000):
Interleave factor (1-[1]-32):
Extra sectors per cylinder (0-[0]-63):         =20


need more info ?


and everytime i reboot i get the fsck checking my hd
