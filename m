From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sun, 10 Jan 1999 19:32:44 +0000
Subject: Re: wmaker at 16 bpp, X crashes
Message-Id: <marc-linux-ultrasparc-91606619412310@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91588845410084@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91588845410084@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > ultrapenguin 1.1.9, xf86 3.3.2.3-26, kernel 2.2.0pre4
> 
> > is this a known bug? tmw and fvwm2 works just fine at 16 bpp
> 
> I sent Jakub this patch a few weeks ago. I discovered the problem
> while porting Debian to the UltraSparc.  It fixes the problem.  (It's
> very easy to track these things down with gdb if you have a Debug
> build of X lying around.)

Yep, I have this in my XFree86 patch queue, but have not managed to make new
rpms yet (I'd like to do some hacks in it still). Sorry.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre6 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
