From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 06 Jan 1999 00:28:57 +0000
Subject: New Year's changes in UltraPenguin 1.1.9 [testers welcome]
Message-Id: <marc-linux-ultrasparc-91563809426749@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

UltraPenguin 1.1.9 has undergone following changes:

- Updated to kernel 2.2.0-pre4 vger, where a bunch of things should be fixed,
  such as Qlogic ISP/PTI SBUS driver on sparc32 (I'm too tired now to actually
  look at what those changes were and don't remember them, so if you want
  look them up yourselves).
- Updated modutils, so that they never start kerneld with new kernels
  (this was ok in rc.sysinit, but apparently /etc/rc.d/init.d/kerneld
  was not checking it).
- SCSI Tape Install method: this is a shiny new installation method.
  In images you have tapeboot.img, which you can just dd to a tape
  and boot tape. But if you do that, you have to install off the network,
  or local hd, or CD. But you can also use utils/maketape script (e.g.

  /ftp/ultrapenguin-1.1.9/sparc/utils/maketape /dev/nst0 /ftp/ultrapenguin-1.1.9/sparc/

  which will create a bootable tape with which you can then select
  Local SCSI Tape install. I've tested it on SS20 with Sun DLT, but I hope
  it will run elsewhere as well. I'm looking for feedback about this.
- utils/maketftpsymlink can help you in setting up tftp server.
  Either you run e.g.

  utils/maketftpsymlink -p penguin.mynet.org sun4u

  which will show you the IPINHEX (and possible .SUNX extension) name
  of the symlink you should do in /tftpboot, or, if your tftp server runs
  Linux, you can try

  utils/maketftpsymlink sparc.penguin.com sun4m 08:00:20:de:ad:be

  and the script will lead you through the process of setting everything up.
  I wanted to keep all the control on the administrator, so the script
  as soon as it finds some thing not prepared yet (with the exception of 
  making the symlink in /tftpboot and adding the host into rarp/arp tables),
  it will tell you what's the problem and exit. You can then fix it and
  rerun the script.
  If you'd like a script which will take care of everything automagically,
  let me know.
- As space in ramdisk.img went tight, I also merged /sbin/install and
  /sbin/install2 programs on the sparc into one, which saved a lot of space.

Please let me know if some problems are still remaining with the
distribution. Sorry if I've missed your bug report or mail, if you can,
resend it now if it is still valid.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
