From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 23 Nov 1998 19:03:36 +0000
Subject: silo-0.8.3-1.sparc.rpm, modutils-2.1.121-1.sparc.rpm
Message-Id: <marc-linux-ultrasparc-91188621905979@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

In ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/updates/
you'll find these updates:

silo 0.8.3: I hope this fixes the initrd overwritten problems several people
	    had. If you managed to install the system, can you please try
	    upgrading to this silo, rerun /sbin/silo and try to boot a
	    kernel with an initial ramdisk?
modutils:   updated to 2.1.121+patches, so that loading chained modules
	    works fine (that was the case with fc4+soc & pluto and some
	    parport modules on sparc64)

There are no kernel images nor installer updates yet: a lot of things has
been fixed for eXX00, but they need to be tested and Eric Bautsch reports
some problems as well, so I'd like that sorted out before.

I think I'll probably keep the up-1.1 tree as is and hardlink everything
into up-1.1.1 and put the modification there, as it will require quite a few
changes to the up-1.1 tree, so that one can burn CDs with fixed bugs that
were reported.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.129 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
