From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 05 Nov 1998 18:53:34 +0000
Subject: UltraPenguin 1.1 release
Message-Id: <marc-linux-ultrasparc-91029885405633@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91031051111669@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91031051111669@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've managed to create a nifty bootable CD-ROM with all the latest stuff
in UltraPenguin, including changes made today (move to kernel 2.1.126, which
should fix problems with E250, cg6 and other things), the last bug have been
sored out (I have not yet released silo 0.8.3, but the changed source is in
misc/src/trees/silo-0.8.2/), so I've decided the
distribution should not be called beta for years. 

So, UltraPenguin 1.1 is on FTP. 

I'll do now some hacking just to get out of the distribution making
business (I was not doing nearly anything else for last couple of weeks) and
then will try to quickly come up with 1.2 release, which will have all
updates from redhat 5.2 in it.
All you need to install the distribution from network, floppy (unless you
have SBUS floppy on sun4u), tape or CD-ROM (including tools how to make the
image) are at

ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/
(or other paths you used previously, just replace 1.0.9 with 1.1).

I have not put the 630MB iso image of the CD-ROM on ftp, as I don't know how
happy would be mirrors about that and anyone can create it themselves.
If the demand is high, I'll consider putting it up somewhere, though.

And if anyone wants a physical copy (I'm still playing with the stickers for
the CD and CD cover :) ), I can make it on our cdwriter here, unless the
demand will be high volume (but I'd have to ask for some refund for it).
The script to make the CD bootable is FYI misc/src/trees/mkcdboot.

BTW: I've put the TeX/DVI/PS images online, so if you want to wear the original
UltraPenguin T-shirts, look at http://ultra.penguin.cz

Enjoy and have a nice day.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
