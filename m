From: edward@ic.ac.uk
Date: Fri, 08 May 1998 16:35:43 +0000
Subject: problem with enabling swap
Message-Id: <marc-linux-ultrasparc-90222356530989@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi All,

I must be doing somthing stupid here, but I can't see what ;)
I installed the initial Ultrapenguin1 a long time ago, now I decide
to try out 1.0.9, I reformated my previous swap area /dev/sdb2 as 
an ext2 partition, dump all the files I want to transfer across
there. I install without any problems the 1.0.9 distribution
with tftpboot of May 2nd. I re-mkfs my old / partition mounted
on /dev/sdb1, but decline to setup a swap partition (contains backup
files).

After all is installed and running properly I transfer back my files
from sdb2 to sdb1, change the partition type of /dev/sdb2 back to
swap, verify the partition, write it then reboot. mkswap /dev/sdb2
edit /etc/fstab by adding the swap entry at the top:

/dev/sdb2               swap                    swap    defaults        0 0
/dev/sdb1               /                       ext2    defaults        1 1
/dev/fd0                /mnt/floppy             ext2    noauto          0 0
none                    /proc                   proc    defaults        0 0

Then I try "swapon -a" I get the following error:
 swapon: /dev/sdb2: Invalid argument

After some man reading and experimenting I use this entry which does
seem to work:

/dev/sdb2               swap                    sw      defaults        0 0

swapon -a , doesn't generate any error, but my swap is not being used as 
reported by swapon -s or free (or top). 

[root@pengu sbin]# free
             total       used       free     shared    buffers     cached
Mem:         94048      56688      37360      19864      29096       8424
-/+ buffers/cache:      19168      74880
Swap:            0          0          0

Can someone help? I am sure it's somthing obvious, but I am blind by 
nature ;)

Thanks for all,

Ed.

PS: Congrat to David, Jakub, Eddie, ....etc for their excellent work!
