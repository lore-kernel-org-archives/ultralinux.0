From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Mar 1999 07:12:26 +0000
Subject: Re: UltraPenguin 1.1.9 on Ultra Enterprise 1
Message-Id: <marc-linux-ultrasparc-92243269126821@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I'm hoping you might have some hints for me regarding UP-1.1.9.
> 
> I am trying to install UltraPenguin 1.1.9 on a Ultra Enterprise 1 (143MHz),
> with a serial console.  I'm very excited about the possiblity of
> using Sparc UltraLinux as a file-server, but have had no luck getting
> it working.
> 
> When I try to boot from a floppy using the boot.img in the UP-1.1.9 dist,
> SILO prints "SI" then I get "Program terminated" and am dumped back into
> the PROM monitor.

I suppose this is PROM bug I'm seeing on Ultra1/Creator here as well.
I was told newer PROMs in Ultra1 machines should have fixed this, but with
your current PROM there is no way to boot floppy. Try CD-ROM/net/tape
booting instead. Sorry.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
