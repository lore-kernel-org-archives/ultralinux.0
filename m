From: Ward Deng <wdeng@KachinaTech.COM>
Date: Mon, 26 Oct 1998 20:44:15 +0000
Subject: Re: Floppy on some UltraAX/UltraAXi boxes
Message-Id: <marc-linux-ultrasparc-90943673306225@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90602615026064@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90602615026064@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub,

I also tested on Ultra30 too and UltraPenguin maps the floppy as /dev/fd1
or B: in mtools. I tested with PC style "twisted (pin10-16 crossed)"
cable but the system did not recognized. It will be easier for end user
to figure out if it is /dev/fd0. Probably just simbolically link it
to /dev/fd0.

Just to let you all know that this feature exists on all UltraSPARC
systems I tested including AX/AXi and Sun PCI Ultras (not tested on
SBus based ones).

BTW, I felt Xsun24 slower than I expected on a Creator3D FFB so I
did a Xmark/x11perf test. The result seemed to be ok. Obviously Text 
can be accelerated. Of course, this card is for 3D performance and X11perf
is for 2D only. Here is what I got:

Sun Ultra30 Creator3D, 250MHz UltraSPARC II, 128MB RAM, 4.3GBN UWSCSI
OS: UltraPenguin 1.0.9 with kernel 2.1.125
Xserver: Xsun24
Test Resolution: 1280x1024x24bit
Xmark: 13.00051
Xspeed: 
   Graphics :  203192
       Text :  606097
    Windows :  129866

FYR: SGI Onyx RE-2 with IRIX 5.3 xspeed:
   Graphics :   77300
       Text :  267100
    Windows :   20900
(Of course RE-2 is not for 2D either :-(.)

--ward


> Date: Thu, 17 Sep 1998 11:41:08 +0200 (MET DST)
> From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
> To: ultralinux@vger.rutgers.edu
> Subject: Floppy on some UltraAX/UltraAXi boxes
> 
> Hi!
> 
> Just to let you know, on some UltraAX/AXi boxes the single floppy drive you
> have is unit 1 and not 0 (B: and not A: in DOS terms). To get that working,
> you have to use recent kernel (e.g. from CVS), plus it will be accessible
> through /dev/fd1 and not /dev/fd0 as you might expect.
> If you have a recent kernel, the boot messages will tell you correctly
> Floppy drive(s): fd1 is 1.44M
> So if that is your case (if your floppy does not work and prtconf -pv shows
> you something like:
> 
> ....
>             Node 0x????????
>                 manual:
>                 unit:  00000001
>                 address:  ????????.????????.????????
>                 device_type: 'block'
>                 interrupts:  ????????
>                 reg: ????????.????????.????????.????????.????????.????????.????????.????????.????????
>                 name: 'fdthree'
> ....
> 
> (the unit: 1 is important), then upgrade your kernel.
> I'll be making kernel RPMS really soon, once some bug is fixed.
> 
> Cheers,
>     Jakub
> ___________________________________________________________________
> Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
> Administrator of SunSITE Czech Republic, MFF, Charles University
> ___________________________________________________________________
> Ultralinux - first 64bit OS to take full power of the UltraSparc
> Linux version 2.1.121 on a sparc64 machine (498.80 BogoMips).
> ___________________________________________________________________
> 
