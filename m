From: <ultra@a2000.nu>
Date: Mon, 12 Apr 1999 13:13:03 +0000
Subject: Quota un (ultra)sparc linux
Message-Id: <marc-linux-ultrasparc-92392639829067@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

(Repeat of posting some time ago)

hmms

while trying to install qouta

i just won't install :(

:

>cat /etc/fstab
/dev/hda1               /               ext2    defaults,usrquota       11
/dev/hda2               swap            swap    defaults                00
/dev/fd0                /mnt/floppy     ext2    noauto                  00
none                    /proc           proc    defaults                00
#none                   /dev/pts        devpts  gid=5,modeb0          00     

(also: why is there no devpts thing in the 2.2.1 kernel with patches?)

>ll /quota.user
-rw-------   1 root     root       271456 Feb 14 19:45 /quota.user   

>quotacheck -a  runs ok 

but then : 

>quotaon -a
quotaon: using /quota.user on /dev/hda1: Invalid argument  

and quota is not working

>quota -v
Disk quotas for user root (uid 0): none 

>repquota  -a |grep root
root      -- 1612260       0       0          59839     0     0            

but setting a quota (also for an user)

don't works

:

>edquota ultra

Quotas for user ultra:
/dev/hda1: blocks in use: 733, limits (soft = 0, hard = 0)
        inodes in use: 26, limits (soft = 0, hard = 0)    

ok setting some limits

Quotas for user ultra:
/dev/hda1: blocks in use: 733, limits (soft = 250, hard = 1000)
        inodes in use: 26, limits (soft = 0, hard = 0)     

then login as 'ultra' :

>quota -v
Disk quotas for user ultra (uid 537): none


as root repquota :

>repquota -a |grep ultra
ultra     +-     733     250    1000   none      26     0     0 


so it should get a quota

what is wrong ?

ps. kernel 2.2.5


>rpm -qa |grep quota
quota-1.66-1
