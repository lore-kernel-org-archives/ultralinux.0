From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sat, 14 Nov 1998 19:53:04 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91108815922574@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Why is the "long" a different size in kernel and user space?  That
> seems buggy.  It's an easy thing to fix, but it seems like the Wrong
> Thing[TM].

Simple reason: the userland application in question is a 32bit application,
not the native 64bit application, while the kernel is 64bit. 64bit apps
don't need any translations, 32bit apps run in 32bit emulation. So, we are
of course not going to change it to int, just add ioctls playing with that
structure into our 32bit compatibility layer.
> 
> Changing that to "int" would be just fine, *except* it would break the
> protocol for all other platforms.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
