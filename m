From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 28 Apr 1999 15:19:43 +0000
Subject: Re: Now that UltraLinux is Dead
Message-Id: <marc-linux-ultrasparc-92531335905251@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92531177003080@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92531177003080@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Everyone seems to be shocked and/or dismayed that the UltraLinux project is
> no more..Since this decision has already been made, and seems unchangeable,
> I would like to turn to more practical matters and thank everyone who
> contributed to the project. I haven't been using UP for very long, but the
> experience I had was a very positive one, and I just bought two Old Sparc's
> to hack on because I enjoyed working w/ linux on the sparc so much.

UltraLinux project is definitely not dead, so you don't have to be shocked.
We'll definitely continue working on Linux for SPARC machines (be it kernel
work or userland stuff). The issue is just I spent quite a few hours a week
maintaining a distribution, and those hours will be better spent hacking
kernel, X servers, 64bit userland and other things.

UltraPenguin was a distribution created so that users can easily try out
what we hacked on. In 1.0, it was just a few packages changed against RedHat
4.2, 1.1 was a bunch of changes because at the time we created it there was
no glibc based distribution for SPARCs, then RedHat came with glibc based
5.1 and later 5.2 and UltraPenguin 1.1.9 was that plus a bunch of changes we
did during the time. Now it does not make sense to keep maintaining the
whole distribution any longer. What we hack up will either David publish as
RedHat errata (if it will be important bugfix), or we can publish it on my
ftp site, but still as a single rpm or a couple of rpms you update into your
distribution. And the upcoming changes like finally a real 64bit userland
will hopefully appear in any distribution you will choice, be it RedHat X.Y
or Debian Z.W.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
