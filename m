From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 18 Mar 1999 09:13:03 +0000
Subject: Re: Fujitsu HAL Series 300 UltraSparc Compatibility
Message-Id: <marc-linux-ultrasparc-92174876514994@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Will a Fujitsu HAL Series 300 UltraSparc system work with UltraPenguin.  I
> can get one for a *very* cheap price (like $400 USD), with monitor and all,
> but it comes w/ SPARC64OS.  It might not be that bad, but I'd like to know
> if I can run Linux on it.

None of the HAL CPUs are currently supported in Linux, and this is probably
not going to change in the near future, unless
a) someone donates such a system to us (a short time loaner would not help,
				        as we need to maintain the port) AND
b) we get specs from Fujitsu/HAL (it is very different to UltraSPARC, so
				  without proper manuals the port is not
				  feasible)

In fact, there is a huge difference between different HAL CPUs as well, and
the older are totally incompatible with UltraSPARC even to the outside of
the chip.

I've been looking at HAL webpages, and SPARC64-GP looks very promising (4
times as big L1 caches, 4way associative, 256 entry TLB which handles up to
4GB pages, etc.), more scalable layout of FPU/IEU/LSU units, register
renaming and instruction reordering, etc., but really without a system 
to work on and without manuals the port cannot be done.

I think I remember someone at HAL saying he'll do the HAL port a year or
more ago, but I haven't heard anything since then.

But if I could choose to do either SPARC64-GP or UltraSPARC III port, I'd
probably chose the latter.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
