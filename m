From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 29 Oct 1998 17:30:17 +0000
Subject: Major UltraPenguin 1.0.9 update
Message-Id: <marc-linux-ultrasparc-90968203221649@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've done following changes to UltraPenguin 1.0.9:
merged UP installer with the one in RedHat rawhide/sparc, fixed lots of
bugs, fixed tilo problems (now in release 0.2), finished floppy making
in SILO (currently as patched 0.8.1).
The new things are in sparc/images/*.img (tftpboot.img for netbooting and
boot.img/ramdisk.img for floppy booting - floppy booting was not tested with
latest changes, but a couple of days ago (my AX is now running some tasks
I cannot break and would like to finish them before), so I'd welcome some feedback).
All the sources with all the scripts are available in sparc/misc/src/ (the
old src tree is now under src.old/), you should be able to find there all my
scripts to make the images and stuff like that. The only thing what's
missing is that the new installer requires newer libnewt, but that cannot be
made in 1.0.9 without bigger effort in updating lots of packages as rpm, so
if you'll need to recompile it, compile newt on your own.
There seems to be some bug still in sbus probing for ethernet devices (my
sunhme was not autoprobed), but you can select it from a dialog manually.
I'll work on it and try to fix it, but thought you guys could in the
meantime look for other bugs.
I've moved kernel rpms to RPM area, so you'll get 2.1.125 kernels after
installation, plus there is a couple of new/updated packages:

glib bug should be fixed (a trailing space in comps file :( )
usermode complains should be fixed (it was build with old gtk, not gtk+)
sparc32 - new package to build sparc32 compilation environment
pciutils - new package
fbset - new package
xpdf - new package
rpm - updated to 2.5.5-3
gettext - updated to 0.10.35-3

Enjoy and report any bugs to ultralinux@vger.rutgers.edu.
Thanks.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
