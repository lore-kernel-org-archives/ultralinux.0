From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Fri, 09 Oct 1998 10:08:24 +0000
Subject: weird segfault on ./configure scripts doing eval something
Message-Id: <marc-linux-ultrasparc-90793529604749@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun ultra sparc 10
with ultralinux 1.0.9

when try to compile :


(doing  ./configure)

checking for AIX... ./configure: line 957:  8312 Segmentation fault      (
eval "$ac_cpp conftest.$ac_ext" )2>&5
      8313 Done(1)                 | egrep "yes" >/dev/null 2>&1
no
checking for POSIXized ISC... no
checking for minix/config.h... ./configure: line 1007:  8324 Segmentation
fault      ( eval $ac_try )2>&5
no
checking for ANSI C header files... ./configure: line 1125:  8348
Segmentation fault      ( eval "$ac_cpp conftest.$ac_ext" )2>&5
      8349 Done                    | egrep "free" >/dev/null 2>&1
./configure: line 1125:  8355 Segmentation fault      ( eval $ac_link
)2>&5
no

not always on the same point
but only errors when trying to do ./configure
so i think it's a libary problem or something

(this was trying to do rpm --rebuild fetchmail-4.6.0-1.src.rpm )

please help me out
i'm really sick of this errors

(also the problem that i can't run 2.1.125 or something (tried 120-125))

cause netwerk card does not run at 10mbit/sec then
