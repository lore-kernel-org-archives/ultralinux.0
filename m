From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Wed, 28 Oct 1998 13:25:05 +0000
Subject: Tcl/Tk under ultrapenguin-1.0.9
Message-Id: <marc-linux-ultrasparc-90958348205501@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

I want to use a shared library with `wish', and it currently does not
work:

[thierry@paranormale tkisem]$ wish
% load ./tkisem.so
couldn't load file "./tkisem.so": /usr/lib/libstdc++.so.2.7.2: undefined symbol: __find_first_exception_table_match
% ^D
[thierry@paranormale tkisem]$ nm -P /usr/lib/gcc-lib/sparc-redhat-linux/2.7.2.3/libgcc.a | grep '__find_first_exception_table_match'
__find_first_exception_table_match T 0000000000000078
[thierry@paranormale tkisem]$ rpm -qf `which wish`
tk-8.0-12
[thierry@paranormale tkisem]$ 

So I guess the package `tk-8.0-12' was not compiled with the same gcc
version. Or I missed something.

On the other hand, I tried to re-compile re-build Tcl/Tk from
`tcltk-8.0-12.src.rpm'. But `configure' sometimes hangs on doing
nothing (as reported by `top'). Typing Control-D allows to go on, but
the configuration seems to be wrong (it "pseudo-segfaults").

[root@paranormale SPECS]# rpm -bb --buildarch sparc tcltk-8.0.spec
[...]
+ cd ../..
+ cd expect-5.24
+ CFLAGS=-O2 -D_REENTRANT
+ ./configure --enable-gcc --enable-shared --prefix=/usr
[...]
checking whether using a cross-compiler...  /* It waits here */
^D
./configure: line 1449: 11995 Segmentation fault      ( ./conftest; exit )2>/dev/null


Any help appreciated.

Thierry.
