From: Ward Deng <wdeng@KachinaTech.COM>
Date: Fri, 30 Oct 1998 02:01:57 +0000
Subject: some UltraPenguin experience
Message-Id: <marc-linux-ultrasparc-90971268005380@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

HI, folks,

First I'd like to thank JJ and davem along with others for their
excellent job on UltraLinux. Here I have something to share with you.

We installed several systems during last week or so. Something we
discovered could be useful for our UltraLinux team and all users:

1. We have a Symbios 22801 dual-channel SCSI controller, we tested
   it on an UltraAX. It worked fine under Solaris 2.6 but had some
   problems with UltraLinux. Kernel 2.1.99 simple hangs there during
   the installation after detecting it as two 53c875 based SCSI
   instead of one while under kernel 2.1.125, it emited the following
   error message:

   SCSI host 1 abort (pid23) timed out - resetting
   SCSI bus is being reset for host 1 channel 0
   ncr53c8xx_reset: pid# reset_flags=2 serial_number=xx \
                                      serial_number_at_timeout=xx

   Note: here xx starts from 38 and the message repeats forever.
   We do not know if it is a hardware problem.

2. When I compiled the kernel, vmlinux was created without any problem
   but when I "make modules," it died somewhere with the following
   message (only a part):

   vfc_dev.c: In function `vfc_set_control_ioctl':
   vfc_dev.c:317: `MEMPRST' undeclared (first use this function)
   vfc_dev.c:323: `CAPTRCMD' undeclared (first use this function)
   vfc_dev.c:327: `DIAGMODE' undeclared (first use this function)
   vfc_dev.c:336: `NORMMODE' undeclared (first use this function)
   vfc_dev.c:343: `CAPTRSTR' undeclared (first use this function)
   vfc_dev.c:347: `CAPTRWAIT' undeclared (first use this function)

   Many modules were not compiled. Did I make any mistake during the
   configuration?

3. We have an Ultra30 with OpenBoot 3.11.2. However, it says
   "strange OpenBoot version" when I tried to boot from a tftpboot
   boot image. I have the file but I just do not remember where I
   ftp'ed from - it is slightly bigger (2612152 bytes) than 2.1.99
   based version (2582793 bytes) so I guess it is newer. More
   interestingly, all ATI PCI cards which work perfectly on AX/AXi
   are not recognized by this OpenBoot. Obviously there is no support
   there. I know this is not an UltraLinux problem but I am curious to
   know if there is OpenBoot update. Do we have to say these ATI cards
   only work on AX/AXi but not other Sun Ultra workstations?

--ward

Ward Deng, Ph.D                   |  Kachina Technologies, Inc.
Vice President and COO            |  4708 Douglas MacArthur Road NE,
Tel: 505-888-5934                 |  Albuquerque NM 87110
Fax: 505-888-5902                 |  info@KachinaTech.COM
Email: Ward.Deng@KachinaTech.COM  |  URL: http://www.KachinaTech.COM
