From: DURANTEZ Marc <durantez@is.s.u-tokyo.ac.jp>
Date: Fri, 11 Sep 1998 11:44:57 +0000
Subject: Problem with automount
Message-Id: <marc-linux-ultrasparc-90551513813521@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have a problem with the automount daemon, it doesn't crash but it
doesn't work.
Anyone has an idea of what is wrong? I am not enought sorcerer to
understand the
message of kernel: sys32_ioctl!

Here you have a copy of what I get:

bash-2.01# ./autofs start

Sep 11 10:43:49 helios automount[957]: starting automounter version
0.3.14, path = /home, maptype = yp, mapname = auto.home
Sep 11 10:43:49 helios kernel: sys32_ioctl: Unknown cmd fd(5)
cmd(c0049364) arg(effff944)
Sep 11 10:43:49 helios automount[957]: Map argc = 1
Sep 11 10:43:49 helios automount[957]: Map argv[0] = auto.home
Sep 11 10:43:49 helios automount[957]: using kernel protocol version 3

bash-2.01# ls /home/flex3 (won't return)

Sep 11 10:44:02 helios automount[963]: lookup(yp): looking up
Sep 11 10:44:02 helios automount[963]: lookup(yp): lookup for  failed:
Request arguments bad
Sep 11 10:44:02 helios automount[957]: AUTOFS_IOC_READY: Invalid
argument

I guess the string flex3 should appear somewhere in the messages...

Complementary info:

UltraSparc2 (JU2/1300)
Kernel : 2.1.106 on a sparc64        Ultrapenguin 1.0.9

Linux automount version 0.3.14 (binary from the distribution)
but also Linux automount version 3.1.1 (compiled with gcc 2.7.2.3
and glibc 2.0.7)

Nota: There is also two syntax errors in /etc/rc.d/init.d/autofs
lines 110-111. before the } should be a ; . It is in the package
autofs-0.3.14-3.src.rpm .
