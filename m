From: Stephan van Hienen <ddx@a2000.nu>
Date: Thu, 29 Nov 2001 22:58:45 +0000
Subject: Re: openssh 3.0.1 rpm for sparc (redhat 6.x)
Message-Id: <marc-linux-ultrasparc-100707470130854@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100679315520732@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100679315520732@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 29 Nov 2001, Tom 'spot' Callaway wrote:

> Rebuild from the src rpm available at openssh.org. Should work.

ok tried that :

rpm --rebuild openssh-3.0.1p1-1.src.rpm
Installing openssh-3.0.1p1-1.src.rpm
error: failed build dependencies:
        gnome-libs-devel   is needed by openssh-3.0.1p1-1
[root@ddx /tmp]# rpm --rebuild openssh-3.0.1p1-1.src.rpm  --nodeps
Installing openssh-3.0.1p1-1.src.rpm
Executing(%prep): /bin/sh -e /var/tmp/rpm-tmp.75042
+ umask 022
+ cd /usr/src/redhat/BUILD
+ cd /usr/src/redhat/BUILD
+ rm -rf openssh-3.0.1p1
+ /bin/gzip -dc /usr/src/redhat/SOURCES/openssh-3.0.1p1.tar.gz
+ tar -xf -
+ STATUS=0
+ [ 0 -ne 0 ]
+ cd openssh-3.0.1p1
+ /bin/gzip -dc /usr/src/redhat/SOURCES/x11-ssh-askpass-1.2.4.1.tar.gz
+ tar -xf -
+ STATUS=0
+ [ 0 -ne 0 ]
++ /usr/bin/id -u
+ [ 0 = 0 ]
+ /bin/chown -Rhf root .
++ /usr/bin/id -u
+ [ 0 = 0 ]
+ /bin/chgrp -Rhf root .
+ /bin/chmod -Rf a+rX,g-w,o-w .
+ exit 0
Executing(%build): /bin/sh -e /var/tmp/rpm-tmp.60199
+ umask 022
+ cd /usr/src/redhat/BUILD
+ cd openssh-3.0.1p1
+ EXTRA_OPTS+ CFLAGS=-O2 -m64 -mcpu=ultrasparc
+ export CFLAGS
+ CXXFLAGS=-O2 -m64 -mcpu=ultrasparc
+ export CXXFLAGS
+ FFLAGS=-O2 -m64 -mcpu=ultrasparc
+ export FFLAGS
+ [ -f configure.in ]
+ ./configure sparc64-redhat-linux --prefix=/usr --exec-prefix=/usr
--bindir=/usr/bin --sbindir=/usr/sbin --sysconfdir=/etc/ssh
--datadir=/usr/share --includedir=/usr/include --libdir=/usr/lib64
--libexecdir=/usr/libexec --localstatedir=/var --sharedstatedir=/usr/com
--mandir=/usr/man --infodir=/usr/info --libexecdir=/usr/libexec/openssh
--datadir=/usr/share/openssh --with-pam --with-tcp-wrappers
--with-rsh=/usr/bin/rsh
--with-default-path=/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin
configure: WARNING: you should use --build, --host, --target
checking for sparc64-redhat-linux-gcc... sparc64-redhat-linux-gcc
checking for C compiler default output... configure: error: C compiler
cannot create executables
error: Bad exit status from /var/tmp/rpm-tmp.60199 (%build)


RPM build errors:
    Bad exit status from /var/tmp/rpm-tmp.60199 (%build)

---

on my intel redhat 6.2 box i don't have any problems...

