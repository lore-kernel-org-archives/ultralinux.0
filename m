From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 29 Dec 1998 12:48:48 +0000
Subject: Re: Ultralinux 1.1.9 brick wall....
Message-Id: <marc-linux-ultrasparc-91493679101025@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91493348232595@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91493348232595@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> PC monitor to Mach64 will mean taking the Elite 3D out - I'll try that
> next because...
> 
> console=prom progresses further into the boot, as far as:
> 
> atyfb: 3D RAGE (GT) [0x4754 rev 0x9a] 2M SGRAM, 200MHz PLL, 67 MHz MCLK

No need to take it out, as you see above Mach64 was properly detected (and
as the kernel did not know about SUNW,afb it is fb0), it means from that
time on all output is directed to the VGA connector...
> 
> Where the install freezes again.

It runs, you just don't see it.
Alternatively, you could do
console=prom video=atyfb:off
which would leave the PROM console as the only console.
> 
> Okay, sounds fine, could I just confirm that I'll have access to
> download from the CVS tree - i.e. where is it ?

Sure, see ftp://vger.rutgers.edu/pub/linux/README.CVS
Also, if you install kernel-source, kernel-headers and cvs packages, just
cd /usr/src/linux
cvs login
(type there password, I guess it is cvs or anoncvs, don't remember, see
above document)
cvs update -d

and you're done.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
