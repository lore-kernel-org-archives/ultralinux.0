From: Karl-Olov Serrander <kase@cntw.com>
Date: Fri, 12 Mar 1999 10:47:34 +0000
Subject: ultrapenguin-1.1.9 problems
Message-Id: <marc-linux-ultrasparc-92123595303143@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi

1 During install it was not possible to create a boot floppy.
  Later when i try to access /dev/fd0 i get:
    floppy0: probe failed
    floppy0: probe failed
    floppy0: probe failed
    ...

  Works ok in solaris7

2 silo.conf does not seem to be correct. I can only boot
  linux, not solaris as i have entered during install.

3 I can't choose 1152*900 when configuring X. Sun monitors
  (in my case 20" GDM-20D10) does not seem to be included
  in configuration script.

My configuration:
  Ultra5 with 132 Mb mem
  no IDE disk
  SCSI glm0 (53C875)
  DISK SEAGATE-ST34520W 4.3 Gb
    slice 1 Solaris
    slice 2 linux
    slice 3 solaris swap
    slice 4 linux swap
  Monitor Sun 20" GDM-20D10

  I also have a graphics card TECH-SOURCE Raptor GFX 8P
  which have not tried to use with linux.


4 prompt$ /sbin/modinfo
  The insmod/rmmod combined binary is having an identity crisis.
  Please give it a proper name.

I have upgraded to XFree86*-3.3.3.1-2.sparc.rpm and kernel*-2.2.2-3.sparc64.rpm
but floppy still does not work.

5 what is the status for sound ?

Regards
-- 
Karl-Olov Serrander kase@cntw.com
