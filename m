From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 16 Dec 1998 07:44:47 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91379696530718@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I was able to get tftpboot.img to boot and the install procedure appeared
> to run ok.  However, I could not boot from my Linux drive (sd@2,0).

The strange thing is that SILO did not install itself properly.
BTW: Where does the unexpected message in 3 comes from? When it was printed?
I haven't seen it ever, nor I know about SILO/kernel to ever print something
like that.

> I got an "unexpected message in 3" error.  tftprescue.img did not work
> either.

This is known bug and I have it fixed in my copy.

>   Rebooting the install and switching to the shell VC, I poked
> around.  I mounted the Linux file systems (they look fine), I ran
> silo manually:
> 
> 	silo -r /mnt -i /boot/ultra.b -u
> 
> resulted in a complaint that it could not open the super block on
> /dev/sdc1.  The device entry does exist in /mnt/dev, and seems to
> be correct.  fdisk sees the proper partition table, and sdc1 starts
> at cylinder 0.

This is a known bug and will be fixed in SILO 0.8.5.
The issue is that SILO 0.8.4 does not like stale symlinks in /dev, so if you
want to do it with 0.8.4, you should from the second VC poke like this:

chroot /mnt
mount -t proc /proc /proc
silo -f

> 
> Any clues?  Should I try your new CD-ROM image?
> 

I haven't put it there yet, hopefully today.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
