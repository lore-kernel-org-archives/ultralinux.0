From: Steve Dunham <dunham@cse.msu.edu>
Date: Sun, 26 Jul 1998 19:20:03 +0000
Subject: Re: Observations on CVS kernel
Message-Id: <marc-linux-ultrasparc-90222358531089@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531081@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531081@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

"David S. Miller" <davem@dm.cobaltmicro.com> writes:

>    Date: 	Sun, 26 Jul 1998 03:51:00 +0200
>    From: Bj|rn Augustsson <d3august@dtek.chalmers.se>

>    If I start X (BTW, very neat startup picture!), and then switch
>    VCs, the parts of the screen where the "border" (in the textmode)
>    is isn't cleared.  (I still see sort of like a frame around the
>    text area, where the old X graphics are left.)
> 
>    (X being the X I got when I installed UP 1.0.9. I haven't installed
>    any special fbcon X-server. I'm a bit surprised this server worked
>    at all.)
> 
> We worked to keep the existing X server interface to using the
> graphics card work as it did before.  As for the VC switching problem,
> I'll let Jakub handle it.
> 
>    How would I go about to set up a dual head? (X or textmode) Both
>    framebuffers get detected properly when booting, and the second one
>    (the CGsix) does _something_ (the screen clicks), but after that,
>    no activity ever on the second screen.

> It might work if you create specific device nodes, or you run the X
> server with explicit device arguments on the command line.

> For dual cgsix for example I just do:

> mknod /dev/cgsix0 c 29 0
> mknod /dev/cgsix1 c 29 1

> or add -dev arguments to the X command line.

I use -dev.  I have xdm running, so I edit "/etc/X11/xdm/Xservers" to
read:

:0 local /usr/X11R6/bin/X -dev /dev/fb1:/dev/fb0 -fp tcp/localhost:7100 -dpi 75

(The graphics cards are a cgsix and a cgfourteen BTW.  You'll want to
leave out the "-fp" bit unless you use xfs.)


Steve
dunham@cps.msu.edu
