From: "Hine,C" <cph@oce.co.uk>
Date: Wed, 04 Nov 1998 15:29:41 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-91019694524275@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Aha, I forgot to mention that SBUS fdtwo is not in healthy 
> state in the kernel yet, what works perfectly is PCI fdthree
> (both fd0 and fd1 whichever it happens), plus maybe sun4m fdtwo, but 
> I'm not sure about it. In fact, I'd be graceful if someone with a sun4m
> fdtwo could acknowledge if it works in recent kernels (2.1.120+) or not.
> If yes, then we have some Ultra/SBUS floppy related bug, otherwise it is
> a problem common to fdtwo.

OK, if you want anyone to test any changes, to get it working, just ask.

> > tty_io.c: process 1 (init) used obsolete /dev/cua1 - update 
> > software to use /dev/ttyS1
> 
> Ok, this is my bug (well, laziness on my part) in that I have 
> not fixed the setserial package to omit overwriting /dev/console
> device, so that serial installs do the above. I'll do that in a
> couple of minutes.

I've just grabbed the latest changes, and it all works. :)

I noted a few very minor errors though:
Xconfigurator tries to run, even though I have not installed
any X stuff.
When booting for the first time the root partition was not
cleanly unmounted.
I still cannot make a boot disk, but that is probably the floppy drive
problem.

Now this machine is installed I was going to start using it, but
if you want me to test installing ultrapenguin again, I'll wait
before doing any work on it, as its the only UltraSPARC machine
we've got here.

Thanks for all the work you've done.

Cheers,
Chris Hine
---
Internet/Intranet Development
Oce (UK) Ltd.
Email: cph@oce.co.uk
