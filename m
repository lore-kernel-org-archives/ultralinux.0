From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 24 Mar 1999 11:37:40 +0000
Subject: Re: Ultrapenguin 1.1.9 on Ultra 10
Message-Id: <marc-linux-ultrasparc-92227584602113@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> The install of UP 1.1.9 was ok, except some problems :
> 
> 1/ Floppy problem
> 
> During the installation of UP 1.1.9, when i tried to generate the floppy
> boot, i couldn't access the floppy.
> 
> At PROM prompt , i did a "test floppy" and it was ok.
> At boot time, the floppy is recognized. Please look at the dmesg output at
> the end of this message.
> 
> When i try to mount a floppy, here is what i get :
> 
> mount -t msdos /dev/fd0 /mnt/floppy
> floppy0: probe failed
> floppy0: probe failed
> floppy0: probe failed
> ...

I think we have some problem with floppies on Ultra5/Ultra10 and it needs to
be sorted out. I cannot test it though.
> 
> 2/ Xsun24
> 
> As you can see, i have a creator 3D. Refresh of windows during moves is
> slow. I expected better performances since the board is based on 3D Rage
> pro chip. Is it normal behaviour ?

I've posted the URL for my and David Miller's Xsun24 rewrite of the
Creator/Creator3D/Elite3D server, which is currently in the testing phase
and once we're satisfied with it, I'll move it into 1.2 distribution.
The URL is ftp://ultra.linux.cz/OS/Linux/Sparc/local/XFree86/
Make sure you have a 2.2.4 or late 2.2.3 kernel (newer than the one included
in 1.1.9) though, so that you don't see mysterious lockups.

Creator is not based on 3D Rage Pro chip, it is completely different beast,
much more powerful and complex. You have 3D Rage Pro onboard as second
display adapter probably, so you can hook a VGA monitor to it.

> 
> 3/ SCSI board
> 
> How can make to detect the SCSI/Ethernet board ? By the way the actual
> active ethernet interface is the one that is integrated in the SCSI board.

Which SCSI/Ethernet board do you have?
Is it PCI SunSwift or what? I see the Ethernet part of it was recognized.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
