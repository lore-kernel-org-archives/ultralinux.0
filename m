From: "Nils Lohner" <lohner@ICD.Teradyne.COM>
Date: Thu, 24 Sep 1998 01:12:00 +0000
Subject: glibc building
Message-Id: <marc-linux-ultrasparc-90664428512210@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


This is a problem I ran into while trying to compile glibc 2.0.96 on an 
ultra.  I'm not sure where the error is... it could well be the compiler, 
which I recompiled with -static in the gcc directory after a complete build 
(cd gcc;make clean;env LDFLAGS=-static make)

The egcs configure script ignores the LDFLAGS passed to it by 
env LDFLAGS=-static ./configure --prefix=/usr --host=sparc-sun-linux

If this is a kernel issue, I plan on recompiling the kernel to the latest 
CVS snapshot tomorrow, and also do some more digging into this.

Thanks, Nils.


gcc   -shared -o sysdeps/../libc.so  -Wl,-dynamic-linker=/lib/ld-linux.so.2 
-Bsysdeps/../csu/  -Wl,-soname=libc.so.6  -nostdlib -nostartfiles -e 
__libc_main -L. -Lsysdeps/../math -Lsysdeps/../elf -Lsysdeps/../nss 
-Lsysdeps/../nis -Lsysdeps/../db2 -Lsysdeps/../rt -Lsysdeps/../resolv 
-Lsysdeps/../linuxthreads -Wl,-rpath-link=.:sysdeps/../math:sysdeps/../elf:sy
sdeps/../nss:sysdeps/../nis:sysdeps/../db2:sysdeps/../rt:sysdeps/../resolv:sy
sdeps/../linuxthreads -Wl,--whole-archive sysdeps/../elf/soinit.os 
sysdeps/../libc_pic.os sysdeps/../elf/sofini.os sysdeps/../elf/interp.os 
sysdeps/../elf/ld.so  -lgcc
/usr/lib/gcc-lib/sparc-sun-linux/egcs-2.92.11/libgcc.a(_bb.o): In function 
`__bb_exit_func':
/home/lohner/work/egcs_tree/egcs/6build/gcc/../../gcc/libgcc2.c(.text+0x274):
 multiple definition of `__bb_exit_func'
sysdeps/../libc_pic.os:/home/lohner/utils/glibc-2.0.96/gmon/bb_exit_func.c:47
: first defined here
/usr/sparc-sun-linux/bin/ld: Warning: size of symbol `__bb_exit_func' 
changed from 308 to 1864 in _bb.o
/usr/lib/gcc-lib/sparc-sun-linux/egcs-2.92.11/libgcc.a(_bb.o): In function 
`__bb_init_func':
/home/lohner/work/egcs_tree/egcs/6build/gcc/../../gcc/libgcc2.c(.text+0x9bc):
 multiple definition of `__bb_init_func'
sysdeps/../libc_pic.os:/home/lohner/utils/glibc-2.0.96/gmon/../sysdeps/generi
c/bb_init_func.c:33: first defined here
/usr/sparc-sun-linux/bin/ld: Warning: size of symbol `__bb_init_func' 
changed from 116 to 100 in _bb.o
collect2: ld returned 1 exit status
gcc: file path prefix `sysdeps/../csu/' never used
make: *** [sysdeps/../libc.so] Error 1
$[lohner@xia01 glibc-2.0.96]$ gcc --version
egcs-2.92.11
[lohner@xia01 glibc-2.0.96]$ uname -a
Linux xia01 2.1.99 #1 Sat May 2 18:35:38 1998 sparc64 unknown
[lohner@xia01 glibc-2.0.96]$ 
