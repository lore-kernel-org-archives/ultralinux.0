From: Charu Chaubal <chaubal@ha3mpk.Eng.Sun.COM>
Date: Fri, 02 Apr 1999 16:53:21 +0000
Subject: order of disk recognition
Message-Id: <marc-linux-ultrasparc-92307233031541@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I was wondering how to force the kernel to always assign the same device drive 
letter to the same physical disk.  I have two SCSI controllers.  Attached to one 
is the disk which contains my UltraPenguin distribution.  On the second one, I 
sometimes have disks attached, and sometimes not.  If I don't have disks 
attached, it labels the disks on the first controller as sda and sdb.  However, 
if I *do* have disks on the second controller, then those get labeled sda, sdb, 
sdc, and the disks on the first controller get labeled sdd and sde.  This causes 
problems because it is setup to mount partitions sdb1, sdb2, sdb3, etc.

short of having two versions of /etc/fstab, how could I have the first 
controller always be recognized first?  I believe it would involve adding 
something to the kernel boot parameters, eg. in silo.conf have a line 
"append=xxx=yyy", but I'm not exactly sure what to fill in for the xxx and yyy.  
Something to do with a driver name and base address?

Thanks (please ask if you need more details),
	Charu
