From: Tethys <tethys@ml.com>
Date: Tue, 26 May 1998 09:26:43 +0000
Subject: Re: XFree86-3.3.1-22 screen corruption?
Message-Id: <marc-linux-ultrasparc-90222356531068@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531065@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531065@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


>Hello, when runnning gimp on a 2x66MHz HyperSPARC SS10 with Ultralinux-1.09
>I get screen corruption as per attachement (freefonts/sharefonts installed)
>when running gimp (script-fu->logos->alien). Is this an XFree bug or
>gimp-bug?? Graphic: cgsix0 at 0x20000000 TEC Rev 4 CPU sparc Rev b
>(I tried with and without colormap installed option)
>The XF-22 rev fixed the cg6 colormap bug in -21 though!

This is exactly the same problem I have on RedHat 4.2/Sparc on an SS20
(150MHz HyperSparc, X11R6.1-Sun-pl1-23, dual cg6). I don't know if it's
a fault in the X server, some HyperSparc specific problem or something
else. It seems to be related to shared memory. gimp --no-shm --no-x-shm
solves the problem for me (at least in Gimp; other programs have the
same problem). I'm running very close to my limit of physical memory.
There's plenty of swap free, though. Note that I get this image corruption
in Gimp as soon as it starts. It's not related to script-fu->logos-alien.

I had been hoping that when I finally get round to upgrading to UltraPenguin
the problem would vanish. From this bug report, apparently not. Any ideas
welcome.

Tet

--
``Live free or die; death is not the worst of evils'' - General George Stark
--------------------+--------------+----------------------------------------
tethys@ml.com       |  Micro$oft:  | Linux,  the choice of a GNU generation.
tet@astradyne.co.uk | Just say no! | See http://www.uk.linux.org for details
