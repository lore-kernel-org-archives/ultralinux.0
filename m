From: Lencses Gabor <lgaby@mail.euroweb.hu>
Date: Wed, 06 May 1998 16:25:00 +0000
Subject: Re: X files
Message-Id: <marc-linux-ultrasparc-90222356530974@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530972@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530972@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Wed, 6 May 1998, Jakub Jelinek wrote:

> > First of all, the domainname is present on my UE1 too, it appears that
> > it's ok on certain length domainnames [exactly 1,2,3,8,9,10,20+ chars].
> 
> Known bug in the kernel, I have it fixed in my tree, but cannot spend all my
> time just remaking packages.

Hey, bite me! I just tried to be useful. :) And of course I remarked that
you are working quickly. I think all of us has to do work before the
fun...

> > Second any time I press the control key under X, it does something [a sync
> > hop?] and the monitor does the same as when you degauss it. It shatters
> > and deshatters. 
> 
> Haven't been able to reproduce this, what fb are you running?

XFree86-Xvfb-3.3.1-22

Card: Sun Turbo GX Plus
Monitor: 1152x900x76 Monitor type 4

The whole system was installed from the Apr 20 or so 1.0.9, and when the
updates came out, I installed them too.

I have to respecify it. After I move the mouse and press any key.

> > The icons from the control-panel still missing. They are empty boxes. 
> Cannot reproduce this either.

It's ok if I export it to another [i386] X. 

> > The gimp segfaults on start.
> Neither this. GIMP runs just fine.

Sorry, I found this out. It said "Unable to allocate sufficient colormap
entries", so when I exited from control-panel [:) a fine example of a
color hungry application] it started.

> > The exit from Xserver [maybe fwvm?] does not work, the xinit has to kill
> > the server.
> Strange. There was some problem with -18, but it is fixed already and I
> cannot see it.

:) I am known to generate strange effects... and most of them has nothing
to do with the software.

> > The screen is not refreshed after the exit.
> If it has to be killed, then that's normal.

Hmm. On i386 it gets refreshed... Afterall, when it exists and I press any
key it should show that. Since I get back to bash I should be able type
commands without first switching to another VC and back.

When I switch from X to any VC, it refreshes only part of the screen.
And after I switch back to X, it is inverted again.
[The next switch kills the console. :) In the first occurence I wasn't
able to reboot it even via telnet.]


LGaby
