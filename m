From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 02 Nov 1998 19:31:24 +0000
Subject: Further changes in UltraPenguin 1.0.9
Message-Id: <marc-linux-ultrasparc-91003448018926@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've updated the ftp area of UltraPenguin.
I've tried to fix all bugs with tftp/floppy install I discovered,
particularly:

timeconfig/ntsysv are fixed
boot loader should be installed just fine

plus I've added a bunch of new things:

support for swaps 48k-2GB on sparc32, at the moment (due to kernel bug)
just 88k-2GB on sparc64, but that will change to 32TB once that bug is fixed
(waiting for Linus to merge it in)
support for SMP kernels (on SMP machines you should get the SMP kernel as
label smp in silo, plus with the rc.sysinit changes (I'll make rpm tomorrow)
I've made today you can just switch from SMP to UP and back at any time by
just typing a different boot label.
added rescue images:
rescue.img is a floppy image meant as second floppy with the boot floppy
created by the installer (that's a new thing as well)
tftprescue.img is a swiss-army knife for anyone in trouble. Due to some
strange kernel bug on sparc64 it will just work on sparc32 (the kernel has
problems to boot if somebody touched space above 4MB virtual from PROM
mapping - I'm still investigating)
New rpms:
silo-0.8.2	a new, fixed version of the boot loader
mkbootdisk	this is similar to that thingie in rawhide on Intel
genromfs	this is needed by mkbootdisk and by any program creating
		bootable romfs floppies

I'm close to get bootable CDs working and installing, but if you want that
soon, please test if you can what I'm just putting out and report any bugs
you'll see to me.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
