From: Rich Sahlender <rsahlen@voicenet.com>
Date: Tue, 27 Oct 1998 16:08:11 +0000
Subject: 2.1.126 still no sparc64 autofs
Message-Id: <marc-linux-ultrasparc-90950631102086@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I pulled 2.1.126 from vger this morning and sparc64 autofs still fails.

[root@skater /root]# uname -a
Linux skater.micro.lucent.com 2.1.126 #1 Tue Oct 27 09:59:14 EST 1998 sparc64 unknown
[root@skater /root]# automount /home yp auto.home
[root@skater /root]#

No error messages when starting automount, but login as normal user with
automounted home hangs with following messages in syslog:

Oct 27 10:32:09 skater automount[347]: starting automounter version 0.3.14, path = /home, maptype = yp, mapname = auto.home
Oct 27 10:32:10 skater automount[347]: using kernel protocol version 3
Oct 27 10:35:02 skater automount[347]: attempting to mount entry /home/
Oct 27 10:35:02 skater automount[379]: lookup(yp): lookup for  failed: Request arguments bad
Oct 27 10:35:02 skater automount[347]: AUTOFS_IOC_READY: Invalid argument

Note the "attempting to mount entry /home/"
and "lookup(yp): lookup for  failed" messages.
It looks like automount is getting or trying to use a null string instead
of the home mount point for this user.
