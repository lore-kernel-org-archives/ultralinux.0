From: David Van Beveren <dvb@eis.com>
Date: Fri, 08 Jan 1999 20:33:11 +0000
Subject: Dual-Boot Solaris/Linux
Message-Id: <marc-linux-ultrasparc-91593068425848@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

We have the 1.1.9 release as of 12-30-98, and have successfully
installed from Bootable CDROM and via NFS + Boot Floppy. Both
installations have the same issue.

Solaris 2.6 is installed on a separate disk, and when we get to the
bootloader screen, we select /dev/sda1 as a desired alternate boot
device, and label it "SOLARIS2.6". The next screen says "mount failed".
We then clear the label on the laternate boot device, so linux is the
only selected device, and get the same error. The bottom line is we
cannot successfully get through the boot loader screen when the Solaris
disk is present.

When I disconnect the Solaris disk altogether, installation works fine.

Is this a known problem? We would manually set up the silo.conf file,
but it seems that man page is missing, and we do not have a reference
point.

Does someone have a silo.conf with the same or a similar configuration
that we can start from, and detailed silo.conf documentation?

I would also be interested in a silo.conf file with both Solaris and
Linux on the same disk.

Configuration is:
Ultra AXi motherboard
 Onboard SCSI
  Toshiba 32X SCSI CD
  Seagate ST34573W 4.5GB Barracuda for Solaris
  Seagate ST39173W 9.1GB Barracuda for Linux
 Mach64 video
Sun kbd/mouse
333MHz CPU
256MB RAM

Thanks in advance to all.

David Van Beveren
EIS Computers, Inc.
