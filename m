From: Rich Sahlender <rsahlen@voicenet.com>
Date: Thu, 29 Oct 1998 14:17:26 +0000
Subject: sparc64 mt race?
Message-Id: <marc-linux-ultrasparc-90967139815468@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm not sure if this is a kernel, scsi, or 32 .vs. 64 bit issue...

Using the latest 2.1.126 from vger cvs with ultrapenguin-1.0.9 on an
Ultra1, a simple "mt -f /dev/st0 off" to unload a tape sends the cpu
to 100%. Running processes continue but cannot terminate, new processes
will not start. dmesg shows:

esp0: IRQ 3,7e0 SCSI ID 7  Clock 40 MHz CCF=8 Time-Out 167 NCR53C9XF(espfast) detected
esp0: FAST chip is fasHME (family, version=5)
ESP: Total of 1 ESP hosts found, 1 actually in use.
scsi0 : Sparc ESP366-HME
scsi : 1 host.
  Vendor: SEAGATE   Model: ST32171W SUN2.1G  Rev: 7462
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sda at scsi0, channel 0, id 0, lun 0
  Vendor: EXABYTE   Model: EXB-85008SQANXBA  Rev: 07J0
  Type:   Sequential-Access                  ANSI SCSI revision: 02
Detected scsi tape st0 at scsi0, channel 0, id 4, lun 0
  Vendor: TOSHIBA   Model: XM5701TASUN12XCD  Rev: 0997
  Type:   CD-ROM                             ANSI SCSI revision: 02
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
scsi : detected 1 SCSI tape 1 SCSI cdrom 1 SCSI disk total.
esp0: Disabling sync for buggy Toshiba CDROM.
esp0: Disabling DISCONNECT for target 6 lun 0
esp0: target 6 asynchronous
Uniform CDROM driver Revision: 2.14
esp0: Disabling DISCONNECT for target 0 lun 0
esp0: 16 byte WIDE transfers enabled for target 0.
esp0: target 0 [period 100ns offset 15 20.00MHz FAST-WIDE SCSI-II]
SCSI device sda: hdwr sector= 512 bytes. Sectors= 4157201 [2029 MB] [2.0 GB]
sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)
eth0: HAPPY MEAL (SBUS) 10/100baseT Ethernet 08:00:20:8d:21:cd
Partition check:
 sda: sda1 sda2 sda3 sda4 sda6 sda7 sda8
VFS: Mounted root (ext2 filesystem) readonly.
Adding Swap: 151224k swap-space (priority -1)
Swansea University Computer Society IPX 0.38 for NET3.037
IPX Portions Copyright (c) 1995 Caldera, Inc.
eth0: Link is up using internal transceiver at 100Mb/s, Full Duplex.
sunmouse: Successfully adjusted to 1200 baud.

Nothing unusual there nor in syslog. Is there anything else I can
provide to help?

Regards,
Rich
