From: Kris Boulez <kris@belbone.be>
Date: Tue, 28 Jul 1998 12:48:14 +0000
Subject: Mounting iso9660 cdrom fails
Message-Id: <marc-linux-ultrasparc-90222358531091@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm having the following problem when trying to mount
an iso9660 on the internal CD-ROM of my Ultra-1 (I can 
mount this CD on an external Plextor CD writer and on
nearly every other CD player/OS I can find).
The relevant error messages

 sr1: CDROM (ioctl) error, command: Test Unit Ready 00 00 00 00 00 
 extra data not valid Current error sr00:00: sense key Medium Error
 Additional sense indicates Unable to recover table-of-contents
 sr1: CDROM (ioctl) error, command: Test Unit Ready 00 00 00 00 00 
 extra data not valid Current error sr00:00: sense key Medium Error
 Additional sense indicates Unable to recover table-of-contents
 cdrom: open failed.

This is with the latest CVS kernel

The CDROM's are recognized at bootup as

   Vendor: PLEXTOR   Model: CD-R   PX-R412C   Rev: 1.02
   Type:   CD-ROM                             ANSI SCSI revision: 02
 Detected scsi CD-ROM sr0 at scsi0, channel 0, id 5, lun 0
   Vendor: TOSHIBA   Model: XM-5401TASUN4XCD  Rev: 3485
   Type:   CD-ROM                             ANSI SCSI revision: 02
 Detected scsi CD-ROM sr1 at scsi0, channel 0, id 6, lun 0
 [ ... ]
 Uniform CD-ROM driver Revision: 2.12
 esp0: Disabling sync for buggy Toshiba CDROM.
 esp0: Disabling DISCONNECT for target 6 lun 0
 esp0: target 6 asynchronous


Kris,
-- 
Kris Boulez				kris@belbone.be
