From: Grant Beattie <grant@zero.net.au>
Date: Sat, 13 Jun 1998 10:54:25 +0000
Subject: nearly there...
Message-Id: <marc-linux-ultrasparc-90222357631015@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

It's up and running, but when trying to compile a new kernel:

bash-2.01# make vmlinux
make -C arch/sparc/boot btfixupprep
make[1]: Entering directory `/usr/src/linux/arch/sparc/boot'
gcc -O2 -fomit-frame-pointer -o btfixupprep btfixupprep.c
make[1]: Leaving directory `/usr/src/linux/arch/sparc/boot'
gcc -D__KERNEL__ -I/usr/src/linux/include -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -pipe -mno-fpu -fcall-used-g5 -fcall-used-g7  -c -o init/main.o init/main.c
gcc: Internal compiler error: program cc1 got fatal signal 11
make: *** [init/main.o] Error 1


It seems like gcc dies randomly .. :-(


Help?

grant
