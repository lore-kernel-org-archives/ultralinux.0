From: Alejandro Aguilar Sierra <aguilar@modelos1.atmosfcu.unam.mx>
Date: Wed, 13 Jan 1999 19:42:17 +0000
Subject: Two more questions
Message-Id: <marc-linux-ultrasparc-91625820615005@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

Thanks to all of you that answered my silly question about recompiling the
kernel. It worked, and I used the kernel source rpm as adviced by Jakub.

Now I have a couple of questions:
 
1. How to run binaries compiled under sunos/solaris?
   If I try to run, par example, netscape I get:

	$ netscape
	crt0: no /usr/lib/ld.so

  I copied exactly the contents of the directory /usr/gnemul from
  another sparc (non ultra) where it works. And of course I configured
  the kernel to support emulation.

2. How to read a solaris disk?
   I configured support for both the ufs filesystem and the partition
   table, but when I try to mount I get this:

	# mount -t ufs /dev/sdb8 /mnt
	mount: wrong fs type, bad option, bad superblock on /dev/sdb8,
               or too many mounted file systems

   My solaris partition table is:

  Disk /dev/sdb (Sun disk label): 19 heads, 80 sectors, 2733 cylinders
  Units = cylinders of 1520 * 512 bytes

     Device Flag   Begin    Start      End   Blocks   Id  System
  /dev/sdb1            0        0       41    31160    2  SunOS root
  /dev/sdb2  u        41       41      257   164160    3  SunOS swap
  /dev/sdb3            0        0     2733  2077080    5  Whole disk
  /dev/sdb4          257      257      310    40280    7  SunOS var
  /dev/sdb6          310      310      849   409640    4  SunOS usr
  /dev/sdb7          849      849     1927   819280    0  Empty
  /dev/sdb8         1927     1927     2733   612560    8  SunOS home


Thanks in advance for any help.

Alejandro Aguilar Sierra
