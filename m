From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 26 Oct 1998 21:26:52 +0000
Subject: Re: Floppy on some UltraAX/UltraAXi boxes
Message-Id: <marc-linux-ultrasparc-90944474710247@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90602615026064@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90602615026064@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Jakub,
> 
> I also tested on Ultra30 too and UltraPenguin maps the floppy as /dev/fd1
> or B: in mtools. I tested with PC style "twisted (pin10-16 crossed)"
> cable but the system did not recognized. It will be easier for end user
> to figure out if it is /dev/fd0. Probably just simbolically link it
> to /dev/fd0.
> 
> Just to let you all know that this feature exists on all UltraSPARC
> systems I tested including AX/AXi and Sun PCI Ultras (not tested on
> SBus based ones).

The issue is that on machines where floppy is physically unit 1 and not 0,
the hardware floppy unit swap does not unfortunately work. So, we either can
go and write ugly hacks in generic floppy driver, so that those two will be
software swapped, or we can live with that. And I think the latter does not
hurt that much, especially when the kernel during bootup tells you your
floppy is fd1 or fd0. If you have a PC, you can likewise have a B: floppy
only and not have A:...
> 
> Sun Ultra30 Creator3D, 250MHz UltraSPARC II, 128MB RAM, 4.3GBN UWSCSI
> OS: UltraPenguin 1.0.9 with kernel 2.1.125
> Xserver: Xsun24
> Test Resolution: 1280x1024x24bit
> Xmark: 13.00051
> Xspeed: 
>    Graphics :  203192
>        Text :  606097
>     Windows :  129866

Are these numbers # of objects painted per second or time to paint one in
some fraction of time? Concerning text acceleration, I do my best and don't
know how to make it faster a lot (of course, it can be tuned a little bit).
The only 2D things I'm aware is:
	polygons
	bitblt in the same image overlapping to the right
	multiple plane groups (ie. e.g. 8bit and 24bit windows on the same
			       display)
> 
> FYR: SGI Onyx RE-2 with IRIX 5.3 xspeed:
>    Graphics :   77300
>        Text :  267100
>     Windows :   20900
> (Of course RE-2 is not for 2D either :-(.)

It would be more interesting to see x11perf output on the same box running
Linux XFree86 and Solaris Xsun24, so that we see weak spots in sw
implementation, not hw differences.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.125 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
