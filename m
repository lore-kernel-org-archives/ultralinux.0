From: "Holzrichter, Bruce" <bruce.holzrichter@monster.com>
Date: Thu, 14 Feb 2002 19:50:20 +0000
Subject: 2.5.5pre1 Sparc64 build problem
Message-Id: <marc-linux-ultrasparc-101371622209387@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I am running into a problem building 2.5.5pre1 on a Ultra5 platform.  I get
the following error when doing: make vmlinux

gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -o
scripts/split-include 
scripts/split-include.c

scripts/split-include include/linux/autoconf.h include/config

sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux-2.5.4/include -Wall
-Wstrict-pro
totypes -Wno-trigraphs -O2 -fomit-frame-pointer -fno-strict-aliasing
-fno-common
 -m64 -pipe -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4
-fcall-used-g5 
-fcall-used-g7 -Wno-sign-compare -Wa,--undeclared-regs
-DKBUILD_BASENAME=main 
-c -o init/main.o init/main.c

In file included from /usr/src/linux-2.5.4/include/asm/pgtable.h:17,

                 from /usr/src/linux-2.5.4/include/linux/mm.h:27,

                 from /usr/src/linux-2.5.4/include/linux/pagemap.h:10,

                 from /usr/src/linux-2.5.4/include/linux/blkdev.h:9,

                 from /usr/src/linux-2.5.4/include/linux/blk.h:4,

                 from init/main.c:25:

/usr/src/linux-2.5.4/include/asm/mmu_context.h:37: #error update this
function. 
make: *** [init/main.o] Error 1  

If I am reading this correctly (and I doubt that I am :O) ) this is from the
include file mmu_context.h correct?  I diff'ed against 2.5.4 and they are
the same, and 2.5.4 compiled.  (Though I couldn't get 2.5.4 to boot on the
system.. but that's another story....)

Thoughts on were I am going wrong here?


Thanks,
Bruce H.

