From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 11 Aug 1998 12:52:53 +0000
Subject: [CALL FOR TESTERS] pre-release of silo 0.7.3
Message-Id: <marc-linux-ultrasparc-90284411620274@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've put a pre-release of SILO 0.7.3 to
ftp://ultra.linux.cz/OS/Linux/Sparc/local/silo/testing/silo-pre0.7.3-1.tgz
I've welcome any feedback on it.
I haven't been able to test this on any 32bit SPARC, so please be careful
(make sure you have a running tftp server close to you with your kernel).

This release should remove the 2.5MB limit from sparc64 kernels by
dynamically relocating silo second stage loader if enough memory is found.
Also, I have tried to incorporate some of the changes a couple of people
wanted (I think mostly for sun4c with newer PROM).

There is still no support for sun4, although I started looking into it. I
think it is doable, but I'll need some way how to test it, know what
configurations should I support (if only SBUS based are enough, or if I need
to support VME based machines as well).

Also, this code should be compilable even with most recent linux ufs
headers, I hope both under libc5 and glibc. Tell me if I'm wrong.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.115 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
