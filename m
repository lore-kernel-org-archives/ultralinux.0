From: Bosko Radivojevic <bole@falcon.etf.bg.ac.yu>
Date: Wed, 01 Dec 1999 23:50:03 +0000
Subject: Problem with compiling 2.2.13 kernel
Message-Id: <marc-linux-ultrasparc-94409299430208@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

Again me with problems ;)

I've tried to compile 2.2.13 kernel.. I did make menuconfig, make dep, and
just 'make'. But, include/linux/raid/md.h file is missing?

# uname -a
Linux pingvin 2.2.2 #1 Tue Feb 23 15:21:23 CET 1999 sparc64 unknown

# make
[...]
sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux/include -Wall
-Wstrict-prototypes -O2 -fomit-frame-pointer -fno-strict-aliasing -m64
-pipe -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4 -fcall-used-g5
-fcall-used-g7 -Wno-sign-compare
  -c -o ioctl32.o ioctl32.c

ioctl32.c:20: linux/raid/md.h: No such file or directory
ioctl32.c: In function `sys32_ioctl':
ioctl32.c:1998: `RAID_VERSION' undeclared (first use in this function)
ioctl32.c:1998: (Each undeclared identifier is reported only once
ioctl32.c:1998: for each function it appears in.)
ioctl32.c:1999: `GET_ARRAY_INFO' undeclared (first use in this function)
ioctl32.c:2000: `GET_DISK_INFO' undeclared (first use in this function)
ioctl32.c:2001: `CLEAR_ARRAY' undeclared (first use in this function)
ioctl32.c:2002: `ADD_NEW_DISK' undeclared (first use in this function)
ioctl32.c:2003: `HOT_REMOVE_DISK' undeclared (first use in this function)
ioctl32.c:2004: `SET_ARRAY_INFO' undeclared (first use in this function)
ioctl32.c:2005: `SET_DISK_INFO' undeclared (first use in this function)
ioctl32.c:2006: `WRITE_RAID_INFO' undeclared (first use in this function)
ioctl32.c:2007: `UNPROTECT_ARRAY' undeclared (first use in this function)
ioctl32.c:2008: `PROTECT_ARRAY' undeclared (first use in this function)
ioctl32.c:2009: `HOT_ADD_DISK' undeclared (first use in this function)
ioctl32.c:2010: `RUN_ARRAY' undeclared (first use in this function)
ioctl32.c:2011: `START_ARRAY' undeclared (first use in this function)
ioctl32.c:2012: `STOP_ARRAY' undeclared (first use in this function)
ioctl32.c:2013: `STOP_ARRAY_RO' undeclared (first use in this function)
ioctl32.c:2014: `RESTART_ARRAY_RW' undeclared (first use in this function)
make[1]: *** [ioctl32.o] Error 1
make[1]: Leaving directory `/usr/src/linux/arch/sparc64/kernel'
make: *** [_dir_arch/sparc64/kernel] Error 2
