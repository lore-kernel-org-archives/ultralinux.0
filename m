From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 18 Nov 1998 20:57:18 +0000
Subject: Re: More detailed UltraPenguin CD-ROM making instructions
Message-Id: <marc-linux-ultrasparc-91147828200244@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91084546630118@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91084546630118@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz> writes:
> 
> > As I've received a couple of requests for more detailed instructions how to
> > make the bootable CD, here they are:
> 
> I followed the instructions, and ended up with a CD that would boot
> the kernel off of the CD, but then fail with:
> 
>   "Unable to mount root filesystem on device: 0b:00"
> 
> Any ideas what is wrong?  It is loading the kernel from the CD and the
> CDROM is the only CDROM attached to the machine.  The above message is
> preceeded by a "media changed on sr0" so I assume it is detecting the
> CD and everything.

Ok, I'd like to know at least some other messages from the kernel.
Did it show some message about initrd being overwritten?
Did it show the CD-ROM listed between SCSI devices?

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
