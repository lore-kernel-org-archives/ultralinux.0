From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 12 Nov 1998 15:21:10 +0000
Subject: Re: no go on Ultra 10 ?
Message-Id: <marc-linux-ultrasparc-91089442717085@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91088532111774@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91088532111774@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi,
> 
> I'm trying to boot the 'tftpboot.img' file on a Sun Ultra 10 Creator3D
> (the simple one, no Elite's). After loading the images:
> 
> 	29ba00 TILO
> 
> 	root child is f002ca28
> 
> appears and there's a blinking mouse pointer in the upper left corner
> of the screen. That's where it stops...
> 
> Any hints? `sysinfo' output (from Solaris 2.6) appears below:

I guess your Mach64 is being used as the console and not Creator.
To find this out, do
boot net console=prom
to see which fb is going to be used.
Kernels prior to yesterday had higher priority for Mach64 than for Creator.
I guess that's your case. What you can do:
either connect a monitor to mach64, or give it something like
boot video=atyfb:off
or use 
boot video=map:1

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
