From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 23 Mar 1999 09:20:38 +0000
Subject: Re: Header files conflicts
Message-Id: <marc-linux-ultrasparc-92218116701467@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92212191626693@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92212191626693@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> > 
> > Hello,
> > 
> > The header files in /usr/include/linux seriously conflict with some
> > from glibc-devel-2.0.7-29 in my ultrasparc-I box running UP-1.1.9 and
> > kernel 2.2.4.
> > 
> > Here is a sample example (using <sys/types.h>):
> [...]
> > What may have missed?
> > 
> > Thierry Lafage.
> 
> Here is another example (trying to include <linux/types.h>):

That's what you get on i386 with glibc as well, simply linux/types.h is
incompatible with glibc headers, it has been like that for quite some time.
Generally, you should use glibc headers and if you ever need something from
linux/ headers which include linux/types.h or similar headers, just handle
it somehow. If you look into most low level packages which do this, you'll
see they either use their own copy of kernel headers, thus are independent
on the actual kernel version installed during build (which is a good thing),
or #define some define which will prevent those headers to be included.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
