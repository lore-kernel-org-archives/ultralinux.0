From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 12 Mar 1999 17:16:50 +0000
Subject: Re: ultrapenguin-1.1.9 problems
Message-Id: <marc-linux-ultrasparc-92125937922391@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92123595303143@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92123595303143@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi
> 
> 1 During install it was not possible to create a boot floppy.
>   Later when i try to access /dev/fd0 i get:
>     floppy0: probe failed
>     floppy0: probe failed
>     floppy0: probe failed
>     ...
> 
>   Works ok in solaris7

We'll have a look on it. What I know so far is that floppy boot does not
work on any 64bit sparc with the exception of UltraAX and AXi, and that on
the Ultra5 we have here, which runs solaris7 the floppy does not work at
all.
> 
> 2 silo.conf does not seem to be correct. I can only boot
>   linux, not solaris as i have entered during install.

That's a bug in the installer in that it offers something what does not
work. At the moment one should install Linux with silo -t (or choose install
into partition in the installer) and boot linux from there if he wants dual
boot.
> 
> 3 I can't choose 1152*900 when configuring X. Sun monitors
>   (in my case 20" GDM-20D10) does not seem to be included
>   in configuration script.
> 

There are two issues: first I'd like to use DDC to actually query the
monitor info, second is that Xconfigurator does not handle 1152x900 at all.
If I manage to write DDC support for Mach64 soon enough, I could then
collect all DDC ids of Sun monitors and appropriate modelines.

But you can configure it by hand in /etc/X11/XF86Config and 1152x900 should
work then just fine.

> 
>   I also have a graphics card TECH-SOURCE Raptor GFX 8P
>   which have not tried to use with linux.

Raptor is not yet supported AFAIK.
> 
> 
> 4 prompt$ /sbin/modinfo
>   The insmod/rmmod combined binary is having an identity crisis.
>   Please give it a proper name.

Sorry, will work on fix for this.

> 
> 5 what is the status for sound ?

AFAIK sound on ss5 and Ultra[12] sbus works just fine (I have UltraAX on the
desk, so no sound at all), but ebus cs4231 driver is not finished (that's
what Ultra5/Ultra10 has). Ask Derrick Brashear for more info.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
