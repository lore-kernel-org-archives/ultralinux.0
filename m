From: stephan@a2000.nu
Date: Sun, 03 Mar 2002 22:13:30 +0000
Subject: updated util-linux for ultrasparc redhat 6.2
Message-Id: <marc-linux-ultrasparc-101519362401241@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

I want to update util-linux
version that is running is util-linux-2.10f-7
i downloaded  util-linux-2.11n-5.src.rpm from redhat (Rawhide)
and tried to compile it

it goes wrong on the following, does someone know how to fix this/what i'm
missing :

--

cc -s main_losetup.o ../lib/xstrncpy.o -o losetup
cc -O2 -m32 -mtune=ultrasparc -O2 -m32 -mtune=ultrasparc
-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -I../lib -Wall
-Wmissing-prototypes -Wstrict-prototypes -I/usr/include/ncurses -DNCH=0
-I/usr/include/slang -D_FILE_OFFSET_BITSd -DSBINDIR=\"/sbin\"
-DUSRSBINDIR=\"/usr/sbin\" -DLOGDIR=\"/var/log\" -DVARPATH=\"/var\"
-DLOCALEDIR=\"/usr/share/locale\"  -s  pivot_root.c   -o pivot_root
pivot_root.c: In function `main':
pivot_root.c:17: `SYS_pivot_root' undeclared (first use in this function)
pivot_root.c:17: (Each undeclared identifier is reported only once
pivot_root.c:17: for each function it appears in.)
make[1]: *** [pivot_root] Error 1
make[1]: Leaving directory `/usr/src/redhat/BUILD/util-linux-2.11n/mount'
make: *** [all] Error 1
error: Bad exit status from /var/tmp/rpm-tmp.30936 (%build)


RPM build errors:
    Bad exit status from /var/tmp/rpm-tmp.30936 (%build)





