From: Wesley Hosking <wes@atlantek.com.au>
Date: Fri, 31 Jul 1998 09:06:48 +0000
Subject: Loading modules in 2.1.111
Message-Id: <marc-linux-ultrasparc-90222358531102@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Does this kernel break modules (or do I need an update of some kind
from UP 1.0.9 ? ) ?

bash-2.01# modprobe audio
/lib/modules/2.1.111/misc/audio.o: module : QM_INFO: Invalid argument
bash-2.01# pwd
/lib/modules/2.1.111/misc
bash-2.01# ls -al
total 315
drwxrwxr-x   2 root     root         1024 Jul 31 11:23 .
drwxrwxr-x   9 root     root         1024 Mar 16 02:27 ..
-rw-rw-r--   1 root     root        19824 Jul 31 15:14 amd7930.o
-rw-rw-r--   1 root     root        38668 Jul 31 15:18 appletalk.o
-rw-rw-r--   1 root     root        18152 Jul 31 15:14 audio.o
-rw-rw-r--   1 root     root        17680 Jul 31 15:14 cs4231.o
-rw-rw-r--   1 root     root         6224 Jul 31 15:14 flash.o
-rw-rw-r--   1 root     root        37037 Jul 31 15:18 ipx.o
-rw-rw-r--   1 root     root        11272 Jul 31 15:14 openprom.o
-rw-rw-r--   1 root     root        20408 Jul 31 15:17 sch_cbq.o
-rw-rw-r--   1 root     root         8136 Jul 31 15:18 sch_csz.o
-rw-rw-r--   1 root     root         6144 Jul 31 15:18 sch_prio.o
-rw-rw-r--   1 root     root         5048 Jul 31 15:18 sch_red.o
-rw-rw-r--   1 root     root         6920 Jul 31 15:18 sch_sfq.o
-rw-rw-r--   1 root     root         6136 Jul 31 15:18 sch_tbf.o
-rw-rw-r--   1 root     root         8480 Jul 31 15:18 sch_teql.o
-rw-rw-r--   1 root     root        96779 Jul 31 15:18 solaris.o
bash-2.01# modprobe solaris
/lib/modules/2.1.111/misc/solaris.o: module : QM_INFO: Invalid argument
bash-2.01# 

wes
