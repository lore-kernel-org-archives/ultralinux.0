From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 14 Apr 1999 21:04:50 +0000
Subject: Updates in UltraPenguin 1.1.9
Message-Id: <marc-linux-ultrasparc-92412756103438@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

Updates in UP1.1.9:
kernel-2.2.5-4		should fix some further sparc32 problems
quota-1.66-2		should actually work on sparc64
ethtool-1.0-1		if autonegotiation does not work for you
			on sunhme, you can adjust the speed/duplexity etc.
			of SBUS or PCI sunhme
XFree86-3.3.3.1-5	further FFB fixes, Mach64 fixes (requires the above
			kernel), Leo/ZX support (including acceleration).

plus kernel updated in install images.

If you have Leo/ZX, please test this and tell me if it works for you.
Also, if you can, test the quota, mach64 and ffb to make sure things are
really ready for UP-1.2 release.

Thanks,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
