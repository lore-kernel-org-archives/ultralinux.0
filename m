From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 21 Jul 1998 16:43:50 +0000
Subject: Re: CVS kernels
Message-Id: <marc-linux-ultrasparc-90222358531065@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> > I haven't been able to compile CVS kernels for a couple weeks now ("cvs
> > update -d").  It bombs on suncons.c, after lots of errors involving "struct
> > suncons_operations".  Is anybody successfully compiling the current CVS
> > kernel?

I have fixed this today. All who can, please cvs update -d the 2.1 CVS
kernel and test it.
You need to enable fbcon (as soon as I finish the remaining three drivers,
I'll remove the old sbuscons stuff completely) or PROM con.
fbcon currently supports creatorfb, atyfb (mach64), cgsixfb, plus support
for tcxfb, cgthreefb, bwtwofb is written, but needs to be tested heavily.
Please report any problems you find. cg14, leo/zx and weitek are not yet
supported, maybe tomorrow (BTW: who uses weitek? Isn't it an orphan? I
cannot find anybody calling it...). For those who have cg14, leo/zx promcon
should work even there.
creatorfb, cgsixfb are pretty fast, use as much acceleration as possible.
Non-accelerated framebuffers will probably need some hand optimized version
of fbcon-cfb8, as at least on my tcx I see how it is slow, probably assembly
version of putcs.
Nice things about this fbcon move:
you should be able to spread your consoles accross multiple heads (untested)
you have some options on the kernel command line:

console=noprom			! turn off promcon (normally is promcon
				! started and if some fb is detected, it
				! takes over the console 
video=sbus:nomargins		! use full screen, don't leave the "nice"
				! margins (default is use margins you're used to)
video=sbus:marginsdx18	! x margin 64 on both sides, y margin 18 (top and bottom)
video=sbus:font=SUN12x22	! use huge letters (like PROM uses) - for
				! those who don't like the tiny letters
you can mix the sbus options, e.g.
video=sbus:nomargins,font=SUN12x22
gives me on Creator/1152x900 a nice fast 96x40 color console.

I'll be working on getting 512 char fonts work soon, so that you can have a
special iso* font, etc.

> 
> I asked Mr. Miller when he expected to merge his changes back into the
> main kernel tree but I haven't heard anything back.

Currently you should use the vger CVS for sparc/sparc64, but the full merge
is scheduled for the next couple of days.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.109 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
