From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 17 Mar 1999 10:29:57 +0000
Subject: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92169272206527@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

Myself and David Miller would like to announce a test release
of our Xsun24 rewrite of the Creator/Creator3D/Elite3D driver.
We've spent on it quite a few months and would like to offer it for public
use if no showstoppers are found.
Basically, your Creator/3D/Elite3D should run now much faster, because we
try to get as much as possible from the chip.

Xmark93 went from 23808 to 39247, Xstones from 86842 to 466236 (both x11perf
and xbench are benchmarks measuring speed of most commonly used X
operations). All these numbers are in 32bpp (most of the PCI cards might
have good numbers in 8bpp (but I doubt it could have nearly 500kXstones),
but will be slow as pig in 32bpp).

For exact numbers and rpms see
http://ultra.linux.cz/ftp/OS/Linux/Sparc/local/XFree86/
announcement can be found at
http://ultra.linux.cz/ftp/OS/Linux/Sparc/local/XFree86/creator.html

We'd like to get some feedback on it, fix last few bugs if some appear and
then put this into distributions.

Once we integrate it into XFree86 4.0, we'll add support for mixed 32/8bpp
windows on the same screen and extensive 3D support (even for the 2D
models), so there are really things to improve.

BTW: The reported bug with mouse cursor disappearing near the left/top edges
is fixed.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
