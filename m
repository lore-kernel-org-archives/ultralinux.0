From: Mirko Tochtermann <tochterm@alpha.fh-furtwangen.de>
Date: Wed, 08 Jul 1998 20:38:34 +0000
Subject: ext2
Message-Id: <marc-linux-ultrasparc-90222358531009@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi !

I have installed the UltraPenguin V1.0.9 with kernel 2.1.106 on a 
Ultra 1 with 64 mb.
The problem is that after reboot I get a message from silo
( I don't remember it exactly) :
"Can't find silo.conf ... filesystem has unsupported read-only features.... "
 ( This happens 2 times a day or more often )

My only chance to fix it is to make a boot net, switch to console ,  make a
device called sda1 with mknod and run e2fsck. 
Then e2fsck has the following output:
"Filesystem has unsupported read-only feature(s) while training to open
/dev/sda1 . The superblock could not be read or does not describe a 
correct ext2"

After doing this i make a "e2fsck /dev/sda1 -b 8193" .
e2fsck produce the following output:

.... Fix summary information <y>:
... Block bitmap differences...
... Free blocks count wrong for group .. 
... Free inodes count wrong .. 
... and so on .. 

Any idea ?? 

Thx in advance
	Mirko

P.S.: I have problems to compile any other kernel than 2.1.106 ( e.g. 2.1.108 ).
        Any help available ?

 
