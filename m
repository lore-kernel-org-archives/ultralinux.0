From: Grant Beattie <grant@zero.net.au>
Date: Sun, 14 Jun 1998 03:44:43 +0000
Subject: Re: UP 1.0.9 on ss5/170
Message-Id: <marc-linux-ultrasparc-90222357631018@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631014@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631014@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Marc Duponcheel writes:

> > I finally got it running :) i ended up installing it on my sparcclassic
> > and then moved the disk to the SS5. I've booted it in single user at
> > the moment, here's /proc/cpuinfo
> 
> Hey, this is good news actually! 
> 
> Now, you say that the 'problem' for ss5/170 is merely a setup problem,
> right? I guess there must be a fix for that.

Yep.

> As soon as UP 1.1 comes out, I plan to upgrade my ss5/110 to ss5/170 so
> I'll probably come back with questions once I start trying this.
> 
> You say that if I get things to run on ss5/110 and I simply put the disks
> in a ss5/170 that will work? 

It seems that way. Although gcc dies with a sig 11 more often than not,
and /usr/bin/telnet seems to be flaky too :/

I'm not sure if this is a generic problem or only on the ss5/170.

grant
