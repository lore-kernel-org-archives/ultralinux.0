From: "Roger J. Allen" <rja@sis.rpslmc.edu>
Date: Tue, 15 Dec 1998 02:30:05 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91370287016165@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

First, I want to thank everyone who worked on this.  It must have taken
a huge amount of time, and I appreciate it greatly.

On Mon, 14 Dec 1998, Craig Ruff wrote:

> I grabbed up-1.1.9.iso from ultra.penguin.cz this weekend to give a try.
> I burned a CD from the iso image.  I tried installing on my Ultra-1
> today, and ran into a problem.  The kernel boots ok, but there appears
> to be a problem in the initial ram disk image.  The kernel finds all of
> the hardware on the system, then emits this error:
> 
> /linuxrc: 51:syntax error: "done" unexpected (expecting "fi")
> sr0: disc change detected
> kernel panic: VFS: unable to mount root fs on 0b:00
> 
> I don't have my Linux system available at the moment to poke around in the 
> ram disk image.  Anyone else seen it?
> 

I got the same thing trying to boot a CD on an Ultra 1 Creator 3D Model
170E, a SparcStation 2, and a SparcStation IPC.  The Ultra1 is running
UltraPenguin 1.1 and Solaris 2.6.  The SS2 is running RedHat 5.2 and
Solaris 2.6.  The IPC is running RedHat 5.2.

I did find a way to install it on the Ultra1, but not the SS2 or IPC.

I was able to mount the CD on the Ultra1 with Solaris 2.6.  That let me
copy the RedHat directory to a UFS partition.  Then, I could boot the
tftpboot.img from either the net or from an Exabyte 8505XLE 8mm tape
drive and do a hard disk install from the UFS partition.  There were
a few error messages on one of the virtual consoles during the mount
about the type of UFS partition defaulting to "old" instead of "sun",
but it did work.  If anyone wants the exact error messages, then I can
re-install and take better notes.  It took a little less than 400MB on
the UFS partition to hold the RedHat directory.  I did not test the
install very much.  The disks had already been partitioned, so I did not
do much with disk druid/fdisk.  There was some problem installing the
urw-fonts package.  This is from the install.log:

Installing urw-fonts.
execution of script failed
	cannot open RPM file urw-fonts-1.0-4.noarch.rpm: Success

That rpm is in the RedHat/RPMS directory.  I did not install any of the
latin fonts, so that might be the problem.

The bootable diskette that it tried to make during the install does
not boot, either.  It just prints "SI".

When running PPP for a few minutes, it will hang with a skput error, or
something like that.  Also, the scsi tape still has problems.  I'll get
more info on this later.  I was spending more time testing different
ways to install.

The tftprescue.img did not boot any way that I tried.  With a "boot net"
on the Ultra1, once, it failed mounting the root with (I think that I
scribbled this):

request_module[block-major-226]: Root fs not mounted
VFS: Cannot open root device e2:2f
Kernel Panic: VFS: unable to mount root fs on e2:2f
Press L1-A to return to the boot prom

The rest of the time, it would fail right after the TILO with:

339400
TILO

Fast Data Access MMU Miss

ok

That "Fast Data Access MMU Miss" error always showed up with a "boot
tape" for the tftprescue.img.

For the SS2, "boot net" of the tftpboot.img displayed:

2b3e00 receive failed
TILO

and ran until it got to the:

RAMDISK: compressed image found at block 0

Then the lights went out (the green one on the SS2, and DTR on the break
out box on the serial port), and it was dead.  It took about 7 minutes
of waiting after the 2b3e00 showed up until the "receive failed"
appeared.

I also tried booting from floppy, but none of the three machines would
boot with the diskettes that I made under Solaris 2.6.  I forget which
device I used, but I think that it was something like:

dd if=boot.img of=/dev/diskette bs40k 

Trying to boot the tftpboot.img from floppy just printed "SI".
Sometimes, it would also print "SIProgram terminated" and go to the OK
prompt.

Booting the rescue.img from floppy produced:

Bad magic number in disk label
Can't open disk label package

-- 
Roger J. Allen                Rush-Presbyterian-St. Luke's Medical Center
System Administrator                                   Chicago,  IL   USA
Surgical Information Systems                       Voice:  (312)-942-4825
Internet: rja@sis.rpslmc.edu                         FAX:  (312)-733-6921
