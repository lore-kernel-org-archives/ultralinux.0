From: Shawn Hooton <shooton@cms.cendant.com>
Date: Thu, 25 Mar 1999 02:01:30 +0000
Subject: Problems compiling 2.2.4 Ultrasparc kernel...
Message-Id: <marc-linux-ultrasparc-92232769912646@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I cannot compile the 2.2.4 linux kernel.

System: Stock 1.1.9 Ultrapenguin dist/Ultra 10/256MB RAM/Creator
Kernel obtained from: ftp://ftp.us.kernel.org/pub/linux/kernel/v2.2/

Just to trying to get the kernel to build I followed these steps:

make oldconfig
make dep
make

This is where I run into problems.  During the make I get the output
listed below (Along with more if needed).  Can anyone help me or 
point me in the right direction?

Thanks.

make -C  kernel
make[1]: Entering directory `/usr/src/linux/kernel'
make all_targets
make[2]: Entering directory `/usr/src/linux/kernel'
egcs -O2 -fomit-frame-pointer -funroll-loops -fno-strength-reduce  
-DEXPORT_SYMTAB -c signal.c
In file included from /usr/include/asm/uaccess.h:6,
                 from signal.c:15:
/usr/include/asm-sparc/uaccess.h:313: warning: `__copy_to_user'
redefined
/usr/include/linux/modules/sparc64_ksyms.ver:200: warning: this is the
location of the previous definition
/usr/include/asm-sparc/uaccess.h:337: warning: `__copy_from_user'
redefined
/usr/include/linux/modules/sparc64_ksyms.ver:202: warning: this is the
location of the previous definition
/usr/include/asm-sparc/uaccess.h: In function `verify_area':
In file included from /usr/include/asm/uaccess.h:6,
                 from signal.c:15:
/usr/include/asm-sparc/uaccess.h:49: `current' undeclared (first use
this function)
/usr/include/asm-sparc/uaccess.h:49: (Each undeclared identifier is
reported only once
/usr/include/asm-sparc/uaccess.h:49: for each function it appears in.)
/usr/include/asm-sparc/uaccess.h:49: `STACK_TOP' undeclared (first use
this function)
/usr/include/asm-sparc/uaccess.h:49: `EFAULT' undeclared (first use this
function)
/usr/include/asm-sparc/uaccess.h: At top level:
/usr/include/asm-sparc/uaccess.h:295: parse error before `__copy_user'
/usr/include/asm-sparc/uaccess.h:295: parse error before
`__kernel_size_t'
/usr/include/asm-sparc/uaccess.h:295: warning: data definition has no
type or storage class
/usr/include/asm-sparc/uaccess.h:344: parse error before `__clear_user'
/usr/include/asm-sparc/uaccess.h:344: parse error before
`__kernel_size_t'
/usr/include/asm-sparc/uaccess.h: In function `__clear_user':
/usr/include/asm-sparc/uaccess.h:346: `__kernel_size_t' undeclared
(first use this function)
/usr/include/asm-sparc/uaccess.h:346: parse error before `ret'
/usr/include/asm-sparc/uaccess.h:357: `ret' undeclared (first use this
function)
/usr/include/asm-sparc/uaccess.h:357: `addr' undeclared (first use this
function)
/usr/include/asm-sparc/uaccess.h:357: `size' undeclared (first use this
function)
/usr/include/asm-sparc/uaccess.h: In function `strlen_user':
/usr/include/asm-sparc/uaccess.h:391: `current' undeclared (first use
this function)
/usr/include/asm-sparc/uaccess.h:391: `STACK_TOP' undeclared (first use
this function)
