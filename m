From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 06 Apr 1999 17:01:41 +0000
Subject: UltraPenguin 1.1.9 update
Message-Id: <marc-linux-ultrasparc-92341848122037@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've updated kernel in UltraPenguin distribution to 2.2.5 current, so that
1) SCSI/HME PCI cards are fully supported
2) HME PCI card interrupt problem is fixed
3) LEO console screen glitches are fixed
4) several sparc32 crashes and hangs fixed (e.g. glibc 2.1 should run well
   on sparc32 finally)

In this release, 64bit ELF application support is disabled (I guess none of
you is using 64bit binaries and it is a security hole at the moment), but
/usr/gnemul/sunos/ support is reenabled. Please let us know if you find any
problems.
The kernel has been updated both in rpms and in the install images.

I'd like to release UltraPenguin 1.2 shortly after this, so please test it
as much as possible if you can.
Packages still to be updated are gdb and XFree86 (to fix some FFB bugs and
add Leo/ZX support (I'm finishing last optimizations on leo I'd like to have
in UP1.2).
The CD has not bee updated yet, check the date before downloading it that is
has been updated already.

Enjoy yourselves and the distribution as well,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
