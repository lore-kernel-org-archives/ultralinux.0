From: Dave Andruczyk <djandruczyk@yahoo.com>
Date: Tue, 02 Dec 2003 02:33:39 +0000
Subject: Sparc64 bugs in 2.4.23 kernel
Message-Id: <marc-linux-ultrasparc-107033243212812@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Kernel compile attempted on an ultrasparc 30 (gentoo-1.4rc4) 2.4.23
vanilla sources.

drivers/sbus/char/vfc_dev.c fails to compile because of missing header
file called "vfc_ioctls.h". This file exists in asm-sparc, but NOT in
asm-sparc64.  Copying the header from asm-sparc to asm-sparc64 allowed
it tom complile, but don't know if this is "the right way"...

compiler for the kernel:
sparc64-linux-gcc -v    
Reading specs from
/usr/lib/gcc-lib/sparc64-unknown-linux-gnu/egcs-2.92.11/specs
gcc version egcs-2.92.11 19980921 (gcc2 ss-980609 experimental)



==Dave J. Andruczyk

__________________________________
Do you Yahoo!?
Free Pop-Up Blocker - Get it now
http://companion.yahoo.com/
