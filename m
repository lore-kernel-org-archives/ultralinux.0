From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 26 Jul 1998 01:56:53 +0000
Subject: Re: Observations on CVS kernel
Message-Id: <marc-linux-ultrasparc-90222358531082@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531081@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531081@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Sun, 26 Jul 1998 03:51:00 +0200
   From: Bj|rn Augustsson <d3august@dtek.chalmers.se>

   I had a few problems with getting modules to work, so I decided to
   build a monolithic kernel. I had problems getting the nfsd support
   to compile because of __my_nfsfh_is_too_big() being unresolved in
   /fs/nfsd/nfsfh.c so I configured without it. Looking at the code, I
   could probably just have commented the (single) usage of it out,
   but I don't need the machine to serve NFS anyway.

This is a run time check, the symbol is unresolved on purpose.  If the
structure in question is small enough the test will be optimized away
by the compiler.  If you try to "fix" this by removing the test you
will have an nfsd which will not operate correctly at all and probably
crash the machine when used.  People are actively working on a fix for
this.

   What's the limit?

About 2.6MB

   If I do L1A and then "go", the machine hangs. Under Solaris this
   generally works. (I have never seen it hang, a friend says he saw a
   panic once.)

It doesn't work because the support for it was never added.  Depending
upon how much of the higher priority work gets done on the sparc64
kernel, this may or may not ever get implemented.

   If I start X (BTW, very neat startup picture!), and then switch
   VCs, the parts of the screen where the "border" (in the textmode)
   is isn't cleared.  (I still see sort of like a frame around the
   text area, where the old X graphics are left.)

   (X being the X I got when I installed UP 1.0.9. I haven't installed
   any special fbcon X-server. I'm a bit surprised this server worked
   at all.)

We worked to keep the existing X server interface to using the
graphics card work as it did before.  As for the VC switching problem,
I'll let Jakub handle it.

   How would I go about to set up a dual head? (X or textmode) Both
   framebuffers get detected properly when booting, and the second one
   (the CGsix) does _something_ (the screen clicks), but after that,
   no activity ever on the second screen.

It might work if you create specific device nodes, or you run the X
server with explicit device arguments on the command line.

For dual cgsix for example I just do:

mknod /dev/cgsix0 c 29 0
mknod /dev/cgsix1 c 29 1

or add -dev arguments to the X command line.

Later,
David S. Miller
davem@dm.cobaltmicro.com
