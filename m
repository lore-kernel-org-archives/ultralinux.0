From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 29 Dec 1998 12:27:13 +0000
Subject: Re: Ultralinux 1.1.9 brick wall....
Message-Id: <marc-linux-ultrasparc-91493623200774@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91493348232595@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91493348232595@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Hi guys,
> 
> I pulled down the up-1.1.9.iso image from doc.ic.ac.uk's mirror site, and
> wrote a cd. 
> 
> boot cd on a Sun Ultra 10 works up to a point.
> 
> The system boots, the SILO prompt comes up, and says 
> "You have just booted to the SILO prompt on a SUN4U Sun Ultra 5/10 UPA/PCI
> Ultra Sparc IIi 300MHz"
> 
> I hit enter, and the messages go:
> 
> Uncompressing image...
> Loading initial ramdisk....
> -
> root child is f002ca28
> 
> The the boot just stops. 
> 
> This happens on two different sun ultras, both with exactly the same
> messages. 
> 
> The machines are as above SILO prompt, with 256Meg Ram, and Elite3D
> graphics systems.
> 
> I'd love some light shed on this. I don't fancy playing with 1.0, but I'm
> happy to devote some time to 1.1.9.

I guess the reason behind this is Elite3D. The kernel which is at the moment
in 1.1.9 does not support Elite3D yet, the one in CVS already does, though
davem reports problems with hardware cursor in X, so we'll have to do more
to get it working.
If you want to try now, either do a serial installation, or attach a PC
monitor to the Mach64 (I guess every Ultra 5/10 has one), or boot with
console=prom
and after installation, cvs update -d the kernel and compile it...
I'll be making new images, once vger merges with 2.2.0.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
