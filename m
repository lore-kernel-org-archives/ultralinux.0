From: Bj|rn Augustsson <d3august@dtek.chalmers.se>
Date: Sun, 26 Jul 1998 01:51:00 +0000
Subject: Observations on CVS kernel
Message-Id: <marc-linux-ultrasparc-90222358531081@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I installed ultrapenguin 1.0.9, and then got the latest kernel from CVS,
to test the new console system. Especially the multihead part.
The kernel is 1.2.109, from about 1700 26-Jul GMT.

The machine is a U1140E with two disks, a floppy, a CD, a Creator and a 
CGsix.

I had a few problems with getting modules to work, so I decided to build 
a monolithic kernel. I had problems getting the nfsd support to compile
because of __my_nfsfh_is_too_big() being unresolved in /fs/nfsd/nfsfh.c
so I configured without it. Looking at the code, I could probably just
have commented the (single) usage of it out, but I don't need the machine
to serve NFS anyway.

Mostly everything seems to work fine, but I have a few questions/comments:

My first try at a monolithic kernel failed to boot because it was to big.
(Can't remember the error message, but something along the lines of
"kernel image to big to fit in destination".)
I stripped some things from it and rebuilt without a problem. 
The first one was about 1MB compressed, and the new one is about 810K
compressed. (2.2MB uncompressed)
What's the limit? 

If I do L1A and then "go", the machine hangs. Under Solaris this generally
works. (I have never seen it hang, a friend says he saw a panic once.)

If I start X (BTW, very neat startup picture!), and then switch VCs, the
parts of the screen where the "border" (in the textmode) is isn't cleared.
(I still see sort of like a frame around the text area, where the old X
graphics are left.)

(X being the X I got when I installed UP 1.0.9. I haven't installed any
special fbcon X-server. I'm a bit surprised this server worked at all.)

How would I go about to set up a dual head? (X or textmode)
Both framebuffers get detected properly when booting, and the second one
(the CGsix) does _something_ (the screen clicks), but after that, no 
activity ever on the second screen.

Thanks,
  /August.
-- 
Wrong on most accounts.  const Foo *foo; and Foo const *foo; mean the same: foo
being a pointer to const Foo.  const Foo const *foo; would mean the same but is
illegal (double const).  You are confusing this with Foo * const foo; and const
Foo * const foo; respectively. -David Kastrup, comp.os.linux.development.system
