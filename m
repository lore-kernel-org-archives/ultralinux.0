From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sat, 17 Oct 1998 07:16:02 +0000
Subject: Re: kernel panic at boot
Message-Id: <marc-linux-ultrasparc-90865639809402@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90860854224512@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90860854224512@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I have just acquired an Ultra 2 Creator 3D and am attempting a network 
> installation.  The kernel will partially boot when I run "boot net",
> however it panics and I'm not sure why.  Here are the last messages
> before the computer freezes.
> 
>   Sparc Zilog8530 serial driver version 1.20
>   Kernel panic: zilog: address property
>   Press L1-A to return to the boot prom
> 
> ...but at this point the computer is frozen solid and a message at the 
> top of the screen in the normal console font reads...
> 
>   WHOOPS: proplen for address was -1, need multiple of 4
> 
> Has anyone seen this error before?  If this is documented please tell
> me where so that I may read the documentation.

This is fixed in latest CVS kernels. If you can, compile them yourself, if
you cannot, wait a few days till we make images.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.125 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
