From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sun, 14 Jun 1998 04:10:50 +0000
Subject: Re: UP 1.0.9 on ss5/170
Message-Id: <marc-linux-ultrasparc-90222357631019@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631014@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631014@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > As soon as UP 1.1 comes out, I plan to upgrade my ss5/110 to ss5/170 so
> > I'll probably come back with questions once I start trying this.
> > 
> > You say that if I get things to run on ss5/110 and I simply put the disks
> > in a ss5/170 that will work? 
> 
> It seems that way. Although gcc dies with a sig 11 more often than not,
> and /usr/bin/telnet seems to be flaky too :/
> 
> I'm not sure if this is a generic problem or only on the ss5/170.

That's exactly the behaviour like TurboSPARC port currently works (and has
for at least half a year).
It is flaky, it is probably some cache flushing issue or whatever.
If you'd have time and want to do that, I could tell you how you can debug
it and what to look at.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.105 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
