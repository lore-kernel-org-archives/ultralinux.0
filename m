From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 11 Jan 1999 17:10:04 +0000
Subject: Jan11 changes in UP1.1.9
Message-Id: <marc-linux-ultrasparc-91609546631757@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

The changes made today in
ftp://ultra.linux.cz/pub/ultrapenguin-1.1.9/
are mostly related to the installer:

- Fixed tape install, now it should work with all tape blocksizes
  and all combinations of selected packages. Please note that at least
  my SS20 does not handle blocksizes larger than 16K for tapeboot.img
  (ie. the bootable image at the beginning of the tape).
- Fix for bootdisk making/installing bootloader for kernels 2.2.0*pre*
  (it got confused by kernel called 2.2.0.pre*, while uname and files
  in it being 2.2.0-pre*). That's why e.g. installing SILO failed
  with Jan, 8th kernel.
- Fixes to the Alt+F3,Alt+F4 and Alt+F5 logging (RedHat made it wrong)
  (there is one more bug I forgot to fix with exec.log for serial
  install, but it is not harmful; I'll fix it in the next release).

The last bugfix revealed some broken packages, so here are fixes:

XFree86-ISO8859-2		- prerequires textutils, otherwise
				  does not install properly
XFree86-ISO8859-9		- ditto
ld.so				- prerequires sh-utils, grep, fileutils
				  (this explains e.g. why ld-linux.so.1
				  used to be a hard link to ld4cdm-linux.so.1
				  even on Ultra - ie. did not work on sun4u)
pamconfig			- prerequires textutils
pam				- security fix from RedHat

The updated CD will be there in a few minutes.

Next release should hopefully include updated glibc, so that the default
nsswitch.conf does not mention nis/nisplus (the well known tar slowdowns),
plus implement vfork, as it will speed several things a lot.
Many packages already use vfork, which has been till now the same function
as fork.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre6 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
