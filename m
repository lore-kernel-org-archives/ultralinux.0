From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 05 Nov 1998 21:37:38 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91031034311604@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> hi!
> 
> i'm having a few problems with the new ultrapenguin stuff. 
> 
> 1 - the install works flawlessly, but there seems to be something wrong
> with initrd... when i reboot after installing i get:
> 
> initrd overwritten ([some address] > [some other address]) - disabling it

Can you tell me those some addresses and some other addresses? How much
memory do you have? What size is your /boot/initrd*.img (provided you get
tftprescue.img working - see below).
> 
> and after this it of course can't mount root. is there a way to tell silo
> to load a module?

There is no way to do that, you have to get either initrd working, or
compile the required modules into the kernel.
> 
> 2 - tftprescue.img fails horribly: 
> 
> <paste>
> 2f9000 TILO
> copy 31A000 1538F0 1726398
> copy 260000 9A276 759418
> Memory Address not Aligned
> </paste>
> 
> 
> any hints?

Grab the most recent tftprescue.img, it should not fail horribly (I assume
you don't have it, as it should not print the copy messages).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
