From: Steve Dunham <dunham@cps.msu.edu>
Date: Fri, 12 Jun 1998 02:04:28 +0000
Subject: Re: UltraPenguin 1.0.9 install problems (Ultra 2)
Message-Id: <marc-linux-ultrasparc-90222357631006@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631002@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631002@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz> writes:

> This is strange. Which tftpboot.img were you using? The oldest ones in April
> were installing random kernel, yes (whichever came first, I think), but from
> then it was fixed (I hope, at least it worked on all my sparc64 and sparc32
> installs). It is decided in install2, which downloads hdlist that contains
> version numbers and architecture of each package. Install then selects the
> most suitable one.

Oops, my mistake.  I usually customize my distributions, and used the
old genhdlist, which didn't include the ARCH tag.


Steve
dunham@cps.msu.edu
