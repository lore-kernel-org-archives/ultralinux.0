From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 16 Dec 1998 22:09:59 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91384815825262@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> The XSun server seems to ignore the -ar1 and -ar2 key repeat settings.
> The keyboard is too speedy for my taste.

That's why I'm adding now limited support for XF86Config to Xsun* (keyboard
and files sections), so that one can easily configure xkb keyboards, set
repeat setting and configure fonts (well, most is doable by xkbcomp or xset
from xinitrc &co. scripts, but it is not that easy for an unexperienced
user).
> 
> All my other testing seems to be ok.  I noticed the hme0 interface
> failed to autoconfig against our Cisco 5000 Etherswitch, but Solaris
> and Irix fail to do so also.  Are there module arguments to force
> the speed/duplex settings?

David Miller is going to write an eth-tool utility, which will allow setting
stuff like that.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
