From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 07 Oct 1998 13:49:00 +0000
Subject: XFree86-3.3.2-9 rpms available
Message-Id: <marc-linux-ultrasparc-90776769431532@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've just released XFree86-3.3.2-9 rpms (you can find them in UP1.0.9
area on
ftp://sunsite.mff.cuni.cz/OS/Linux/Sparc/ultrapenguin-1.0.9/sparc64/RedHat/RPMS/
or later on all the mirrors).
This release includes:

acceleration support for Creator/Creator3D: you should see the difference
even with your own eyes, as I do. The Xsun24 server now uses optimizations
for most things it does. The most important part is the VIS assembly blitter
(which is a fast, but hairy code that took more than one month of
development). The acceleration can be turned off by using -noFFB option,
e.g.
startx -- -noFFB
For the blitter to work correctly wrt signals, you need current CVS kernel
(otherwise it may happen that your X server crashes after several hours. The
issue is that until two days ago, the kernel for 32bit processes, unlike
Solaris, did not save upper 32bits of %o? and %g? registers and upper 4 bits
of %ccr on signals, so -mv8plus code using high 32bit parts of %o? and %g?
registers and 64bit comparison would work most of the time (as syscalls and
interrupts save those registers fully), but if a signal comes in, you
loose). If you have older kernel, upgrade it or run -noFFB for safety.
In fact, you could also #define SIGNAL_CLOBBERS_OG_REGS in
xc/programs/Xserver/hw/sun/VISmoveImage.s and recompile, but I guess kernel
upgrade is easier.
Currently unimplemented optimizations are: generic polygons (I should fine
time for this soon) and another version of the VIS blitter - current version
works only if source is different than destination, if you're copying
non-overlapping images or if you copy to the left or vertically only. If
dstx is greater than srcx, it won't work (the X server knows it and for such
cases does it the old slow way - you may notice it if you drag a window to
the left, it should be faster than dragging to the right). The other version
is basically just mostly reversed algorithm of the current blitter, but will
take a couple of days or more to be actually coded and tested.

XF86_Mach64 now shows the banner like Xsun* servers do.

Enjoy...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.125 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
