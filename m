From: Rich Sahlender <rsahlen@voicenet.com>
Date: Mon, 26 Oct 1998 14:28:33 +0000
Subject: sparc64 autofs
Message-Id: <marc-linux-ultrasparc-90941213724594@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I saw a post about this a few weeks ago and the response was that it was
fixed in the newer kernels. I pulled the source from vger cvs last week
for 2.1.125 and I still get:

[root@skater /root]# automount /home yp auto.home
[root@skater /root]# sys32_ioctl: Unknown cmd fd(5) cmd(c0049364) arg(effffc64)

I took all the defaults in "make config"...

[root@skater /root]# uname -a
Linux skater.micro.lucent.com 2.1.125 #1 Mon Oct 26 08:17:54 EST 1998 sparc64 unknown
[root@skater /root]#

What have I missed? This works fine on an ss20 even with 2.1.99.
