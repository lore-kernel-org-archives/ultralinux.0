From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Wed, 03 Jun 1998 13:08:22 +0000
Subject: Some problems using ultalinux (who /group/ps)
Message-Id: <marc-linux-ultrasparc-90222357630981@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


ok here to report some prob:

using who fails after some days running the system :


[ddx@ddx ddx]$ w
  3:00pm  up 10 days, 22:29,  5 users,  load average: 0.00, 0.03, 0.01
USER     TTY      FROM              LOGIN@   IDLE   JCPU   PCPU  WHAT
ddx      ttya0    e-pop029:S.0     23May98  1:07  27:28  27:28   BitchX 
skinner  ttya1    alkmr1-p52:S.0   25May98  2:20   3:27   3:27   BitchX
Skinner
ddx      ttya2    e-pop029:S.1      2:56pm  6.00s  0.19s  0.16s  pine 
ddx      ttya3    e-pop029:S.3      3:00pm  0.00s  0.08s  0.05s  w 
ddx      ttya4    e-pop029:S.2     26May98 59:40   1:14   1:14   BitchX
DDX 
[ddx@ddx ddx]$ who
Segmentation fault (core dumped)


and what i think  (could be from the same problem:)

but this never works :


[ddx@ddx ddx]$ ps ta0
  PID TTY STAT TIME COMMAND
No processes available.
[ddx@ddx ddx]$ ps ta1
  PID TTY STAT TIME COMMAND
No processes available.


while it should give the processes



and completely other thing:


[ddx@ddx ddx]$ id
uidP0(ddx) gid0(users) groupsC808

hmms

from passwd file : ddx:x:500:100:DDX,,,,:/home/ddx:/bin/bash
and in group file is nothing of user ddx

also gives same problem while being som1 else :



[storm@ddx storm]$ id
uidR4(storm) gid 0(guests) groupsC808


and as root :

[root@ddx /root]# id
uid=0(root) gid=0(root)
groups=0(root),1(bin),2(daemon),0(root),0(root),0(root),0(root)

but why gives it so much root groups ? 


from  group file :

[root@ddx /root]# cat /etc/group
root::0:root
bin::1:root,bin,daemon
daemon::2:root,bin,daemon
sys::3:root,bin,adm
adm::4:root,adm,daemon
tty::5:
disk::6:root
lp::7:daemon,lp
mem::8:
kmem::9:
wheel::10:root
mail::12:mail
news::13:news
uucp::14:uucp
man::15:
games::20:
gopher::30:
dip::40:
ftp::50:
nobody::99:
users::100:fbw,jantjo
guests::200:dezmond

(ps using shadow passwds)
