From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 26 May 1998 10:09:01 +0000
Subject: UltraPenguin updates
Message-Id: <marc-linux-ultrasparc-90222356531069@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

News in the UltraPenguin devel area:

a) glibc fixes, so that threaded programs work fine, can be compiled
   statically.
b) gdb should now work well with v8plusa binaries, ie. 32bit ELF images
   containing v9 and UltraSPARC instructions.
c) util-linux: fixed a bug in mkswap
d) Xconfigurator: fixed probing for cg14

More to come today.

For brave people only, I have built XFree86-3.3.2 packages (current
distribution has 3.3.1 only), but as it requires several changes especially
in PCI code that I could not test, I'd like to hear if it works for you
before I put it into the install area. So, if you'd like to help, please
install misc/sparc/XFree86*.sparc.rpm and tell me, whether it works or
what does not work.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.103 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
