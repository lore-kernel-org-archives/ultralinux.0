From: "Roger J. Allen" <rja@sispro.sis.rpslmc.edu>
Date: Mon, 31 Aug 1998 05:55:14 +0000
Subject: booting from a scsi tape drive
Message-Id: <marc-linux-ultrasparc-90455762603768@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I noticed in the RedHat 5.1 errata for sparc that they had info on
booting from a tape drive.  I have an Ultra1 with an Exabyte 8505XLE 8mm
tape drive at home, so I decided to give it a try.  Under Solaris 2.6,
with sunsite.mff.cuni.cz's ultrapenguin-1.0.9/sparc/images/tftpboot.img:

dd if=tftpboot.img of=/dev/rst12 conv=sync

Then get to the boot prompt and type:

boot tape

Then the Penguin appears!

So, we can add another "Boot Method" to the UltraPenguin 1.0.9
Installation Guide (not that there will be may sites that need it :-) ).
At least you do not have to figure out your IP address in hex.

That's the good news.  Now the questions!

I was trying to install without a local area network connection.  I use
PPP at home.  I had hoped to do a Hard Disk Installation by making a
tape at work (with tar) and used sneaker net to bring the tape home and
copied it onto a Solaris 2.6 ufs filesystem.

Unfortunately, I missed the last line of the fine Installation Guide's
Hard Disk Installation section which says that the files have to be on
an ext2 filesystem.  I was able to use a virtual console and create an
ext2 filesystem on a spare partition, but I cannot figure out how to get
the RedHat directory there.

I found cpio, made another tape with cpio under Solaris 2.6 and
tried to install again.  I was able to:

mknod /dev/st0 c 9 0

but I could not get cpio to read anything from the tape.  This is the
same tape drive that I wrote it with, so that is not the problem.  I was
just trying to verify that I could read the tape with:

cpio -itv -I /dev/st0

but the led's on the tape drive go on solid, and Alt-F4 shows esp errors
(bad parity?) scrolling across the screen so fast that I cannot read
them, and it is time to reboot :-(

I also tried tapes made with "-H crc" and different block sizes, but the
same thing kept happening.

Is there some way to copy the distribution from a Solaris 2.6 ufs
filesystem to an ext2 filesystem on the same machine?

How about a way to cpio from the tape drive to the ext2 filesystem after
booting the installation program?

Otherwise, I guess I have to cook up a CD or carry my Ultra1 to work.

If it will help, I can try again and write down the exact error
messages.

Trying to Push the Edge of the Envelope -- but I may have gone to far.

Roger J. Allen                Rush-Presbyterian-St. Luke's Medical Center
System Administrator                                   Chicago,  IL   USA
Surgical Information Systems                       Voice:  (312)-942-4825
Internet: rja@sis.rpslmc.edu                         FAX:  (312)-733-6921
