From: YAMAMOTO Taku <yamataku@layer-seven.com>
Date: Tue, 26 Sep 2000 09:59:11 +0000
Subject: Re: Couldn't find sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-96996232026282@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96995143407396@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96995143407396@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello Joshua-san,

> Very simple ... install the "egcs64" package, which is
> egcs64-19980921-4.sparc.rpm for RH 6.2 ... this contains the 64-bit
> compiler necesary for compiling the sparc64 kernel.

Thank you,this info is very useful for me.
But I have another question.I don't know how to do against following error
msg.

-----
[root@xxx linux-2.2.16rh]# rpm -ivh
/home/yamamoto/archives/kernel/kernel-headers-2.2.16-3.sparc.rpm

kernel-headers              ##################################################
You must create /usr/include/asm/asm-sparc* symlinks first.
-----

Because I couldn't compile apache source after install new compiled
kernel.Apache's error msg is follows,

-----
/usr/include/bits/ioctl-types.h:25: asm/ioctls.h: No such file or
directory
In file included from /usr/include/signal.h:300,
                 from ../include/ap_config.h:1108,
                 from ../include/httpd.h:71,
                 from ap_snprintf.c:61:
/usr/include/bits/sigcontext.h:28: asm/sigcontext.h: No such file or directory
In file included from /usr/include/bits/errno.h:25,
                 from /usr/include/errno.h:36,
                 from ../include/ap_config.h:1131,
                 from ../include/httpd.h:71,
                 from ap_snprintf.c:61:
/usr/include/linux/errno.h:4: asm/errno.h: No such file or directory
make[3]: *** [ap_snprintf.o] Error 1
make[2]: *** [subdirs] Error 1
make[2]: Leaving directory `/usr/local/src/apache_1.3.12/src'
make[1]: *** [build-std] Error 2
make[1]: Leaving directory `/usr/local/src/apache_1.3.12'
make: *** [build] Error 2
-----

Thanks in advance.

___________________________________________________________________
Taku Yamamoto
MailTo: yamamoto@layer-seven.com

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
