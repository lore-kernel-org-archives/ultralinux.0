From: Steve Dunham <dunham@cse.msu.edu>
Date: Mon, 09 Aug 1999 21:17:26 +0000
Subject: Re: PC cards in an Ultra 5?
Message-Id: <marc-linux-ultrasparc-93423427119473@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93390361310323@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93390361310323@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Neal Pitts <niteeyes@erols.com> writes:

> Has anyone had any success hooking up PCI PC cards to an Ultra 5?  I'd
> love to be able to use a PC video card or sound card or whatever else in
> my Sun under Linux.  Anyone know the chances for success for something
> like this?  Thanks!

I've used an adaptec 2940 and a 3C905 in an Ultra 5.  I also have a
Matrox in the machine, but somebody needs to tweak the X server to
work with it.  (Should be fairly easy to get X to work.  Much harder
to get console to work - I started with console and got to the point
where it would set the video mode, but crashed when I tried to move
the console over to the matroxfb).

I've got school, work, and really weird APM problems on my laptop to
deal with, so I don't plan on working on this.


Steve
dunham@cse.msu.edu
