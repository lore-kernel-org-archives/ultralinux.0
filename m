From: YAMAMOTO Taku <yamataku@layer-seven.com>
Date: Tue, 26 Sep 2000 06:59:18 +0000
Subject: Couldn't find sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-96995143407396@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I'm experiencing difficulties that can't compile
using kernel-source-2.2.16-3.sparc.rpm on RH6.2sparc.

I have done following procedure.

# rpm -ivh kernel-headers-2.2.16-3.sparc.rpm
# rpm -ivh kernel-source-2.2.16-3.sparc.rpm
# cd /usr/src/linux
# ln -s /usr/src/linux/include/asm-sparc64 /usr/include/asm/asm-sparc64
# make mrproper
# make menuconfig
# make vmlinux
sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux-2.2.16/include -Wall -Wstrict-prototypes -O2 -fomit-frame-point
er  -D__SMP__ -pipe -mno-fpu -mtune=ultrasparc -mmedlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-comp
are  -c -o init/main.o init/main.c
/bin/bash: sparc64-linux-gcc: command not found
make: *** [init/main.o] Error 127

According to mailinglist,sparc64-linux-gcc exist in /usr/local/bin, but
not found.

Does anyone know complete way to compile linux-kernel with
kernel-sources rpm ?


___________________________________________________________________
Taku Yamamoto
MailTo: yamamoto@layer-seven.com

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
