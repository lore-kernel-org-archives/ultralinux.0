From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 15 Dec 1998 08:09:56 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91371315419728@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I did find a way to install it on the Ultra1, but not the SS2 or IPC.
> 
> I was able to mount the CD on the Ultra1 with Solaris 2.6.  That let me
> copy the RedHat directory to a UFS partition.  Then, I could boot the

You could just choose Local CD-ROM and install the packages from CD
directly.

> tftpboot.img from either the net or from an Exabyte 8505XLE 8mm tape
> drive and do a hard disk install from the UFS partition.  There were
> a few error messages on one of the virtual consoles during the mount
> about the type of UFS partition defaulting to "old" instead of "sun",
> but it did work.  If anyone wants the exact error messages, then I can
> re-install and take better notes.  

No, that should be fixed in my copy already since yesterday.

> It took a little less than 400MB on
> the UFS partition to hold the RedHat directory.  I did not test the
> install very much.  The disks had already been partitioned, so I did not
> do much with disk druid/fdisk.  There was some problem installing the
> urw-fonts package.  This is from the install.log:
> 
> Installing urw-fonts.
> execution of script failed
> 	cannot open RPM file urw-fonts-1.0-4.noarch.rpm: Success

It is on my TODO list, I got the same bugreport.
> 
> That rpm is in the RedHat/RPMS directory.  I did not install any of the
> latin fonts, so that might be the problem.
> 
> The bootable diskette that it tried to make during the install does
> not boot, either.  It just prints "SI".

Ouch, one further thing to check.
> 
> When running PPP for a few minutes, it will hang with a skput error, or
> something like that.  Also, the scsi tape still has problems.  I'll get
> more info on this later.  I was spending more time testing different
> ways to install.
> 
> The tftprescue.img did not boot any way that I tried.  With a "boot net"
> on the Ultra1, once, it failed mounting the root with (I think that I
> scribbled this):
> 
> request_module[block-major-226]: Root fs not mounted
> VFS: Cannot open root device e2:2f
> Kernel Panic: VFS: unable to mount root fs on e2:2f
> Press L1-A to return to the boot prom

Was this from tftprescue? That's strange. I think tftprescue with its
current bug should just tell you Fast TLB data miss and die off.
I have fixed it in the kernel already, just need to test it.
But the problem is on sparc64 only, 32bit boxes provided they have enough
RAM should be just fine (correct me if I'm wrong).

> For the SS2, "boot net" of the tftpboot.img displayed:
> 
> 2b3e00 receive failed
> TILO
> 
> and ran until it got to the:
> 
> RAMDISK: compressed image found at block 0
> 
> Then the lights went out (the green one on the SS2, and DTR on the break
> out box on the serial port), and it was dead.  It took about 7 minutes
> of waiting after the 2b3e00 showed up until the "receive failed"
> appeared.

How much memory does it have?
> 
> I also tried booting from floppy, but none of the three machines would
> boot with the diskettes that I made under Solaris 2.6.  I forget which
> device I used, but I think that it was something like:
> 
> dd if=boot.img of=/dev/diskette bs40k 
> 
> Trying to boot the tftpboot.img from floppy just printed "SI".
> Sometimes, it would also print "SIProgram terminated" and go to the OK
> prompt.
> 
> Booting the rescue.img from floppy produced:
> 
> Bad magic number in disk label
> Can't open disk label package

rescue.img is just a second floppy, so this is expected. It has to be booted
with the floppy made either during installation or afterwards (in that case
using mkbootdisk).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
