From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 10 May 1998 02:27:47 +0000
Subject: Re: compiling libc5 on UP1.0
Message-Id: <marc-linux-ultrasparc-90222356530997@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530996@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530996@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Eiki Ito <eiki@hal.com>
   Date: 	Sat, 9 May 1998 19:20:38 -0700 (PDT)

Firstly, only 32-bit libc's are available at all at the moment.

   o I'm using libc-5.3.12-19.src.rpm found in ultrapenguin-1.0/updates/SRPMS.
    Is this the right package?

yep.

   o include/asm should point to asm-sparc64, not asm-sparc, correct?

nope, it must point to asm-sparc as only a 32-bit userland environment
works at the moment.

   Now I'm totally confused with this 32 vs 64 bit stuff...   Is it any
   better on 1.0.9?

Our goal at the moment is to release a stable 32-bit userland based
UP-1.1  And then finish up the 64-bit userland work we began a long
time ago but only got %70 of the way through.

Firstly, compile the following sparc32.c program, and stick it under /bin:

#include <linux/personality.h>
#include <linux/unistd.h>
#include <stdio.h>
#include <unistd.h>

#ifndef PER_LINUX32
#define PER_LINUX32 8
#endif

_syscall1(int, personality, long, pers);

int main(int argc, char **argv)
{
        if (argc <= 1) {
                fprintf (stderr, "Usage: s32 program arguments\n");
                exit(1);
        }
        personality(PER_LINUX32);
        execvp(argv[1], argv+1);
}

Use it like this:

/bin/sparc32 /bin/sh

This puts you into the 32-bit compilation environment and libc builds
should work just fine.  Actually the only effect this has is to make
uname output "sparc" instead of "sparc64" as the architecture.

   What I'm trying to do is to port Ultrapenguin to another V9
   processor, our SPARC64-III.  Architecture differences with Ultra
   should be minimal, but this is much harder than I thought...  

How easy was it to get the page table guarding and other elements of
the Hal sparc64 chips to work with our memory management and TLB miss
schemes in the kernel?  Can't wait to see this work, feel free to send
patches to me for Hal/V9 support whenever you feel the urge. ;-)

Later,
David S. Miller
davem@dm.cobaltmicro.com
