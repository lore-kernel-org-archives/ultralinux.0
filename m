From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 26 May 1998 18:32:37 +0000
Subject: Re: XFree86-3.3.1-22 screen corruption? (fwd)u
Message-Id: <marc-linux-ultrasparc-90222356531077@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> The shared- memory screen-curruption I reported earlier still prevails in 
> XFree.3.3.2 which otherwise seem to work great on my cg6.
> 
> Q: Where is /etc/X11/XF86Config?? I'd like to custimize fontpath etc
> with some unscaled directives and add some real fonts for a proper display,
> but how do I do that without an /etc/X11/XF86Config??

Xsun* don't use XF86Config. You have to run xset with appropriate parameters
to configure things instead. That can be done in xinitrc scripts, of course.
XF86Config is just for Mach64 and VGA16 servers we include in XFree86/SPARC
packages.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.103 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
