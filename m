From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 12 Apr 1999 05:14:04 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92389438708083@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> On Sun, 11 Apr 1999, David Miller wrote:
> 
> >    Date: Mon, 12 Apr 1999 00:04:05 -0400 (EDT)
> >    From: Peter Jones <pjones@redhat.com>
> > 
> >    > Might want to double-check on strace, have it print out the raw hex
> >    > value for the ioctl cmd code and make sure it matches up.
> > 
> >    open("/dev/mixer", O_RDWR)              = 4
> >    ioctl(0x4, 0x40044dfe, 0x2563c)         = -1 (errno 22)
> > 
> >    No dice, matches up just fine.  Any more ideas?
> > 
> > Could be a compiler bug then, put some debugging printk's into
> > sys32_ioctl(), one right before the big switch which goes:
> > 
> >    printk("sys32_ioctl(before switch): cmd(%08x) "
> >           "SOUND_MIXER_READ_DEVMASK(%08x)\n",
> >           cmd, SOUND_MIXER_READ_DEVMASK);
> > 
> > Then put a similar printk right below the case for
> > SOUND_MIXER_READ_DEVMASK itself.
> > 
> > This bug would explain some problems I had with the gnome mixer applet
> > and some other sound programs on sparc64...
> 
> Hrm.  Odd.   When aumix calls that, its sending 0x20044dfe, which is what
> kernelspace is _expecting_ to get.  somewhere in the middle its becoming
> 0x40044dfe , which is falling through the case.  Any ideas?
> 
> Anyway, I'm going to bed.  I've managed to be in line for a 9:30 meating
> tomorrow.

It must be some userland compilation problem. Make sure it passes
ioctl(?, 0x20044dfe, ????????) to the kernel, then I don't see any
translation beeing done on it. If I do such ioctl (don't have soundcard, but
it should not matter), it does not print any kernel warning about undefined
ioctl.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
