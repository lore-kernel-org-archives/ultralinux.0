From: Bj|rn Augustsson <d3august@dtek.chalmers.se>
Date: Tue, 28 Jul 1998 17:45:25 +0000
Subject: Multihead (Re: Observations on CVS kernel)
Message-Id: <marc-linux-ultrasparc-90222358531095@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, Jul 25, 1998 at 06:56:53PM -0700, David S. Miller wrote:
>    Date: 	Sun, 26 Jul 1998 03:51:00 +0200
>    From: Bj|rn Augustsson <d3august@dtek.chalmers.se>
> 
> We worked to keep the existing X server interface to using the
> graphics card work as it did before.  As for the VC switching problem,
> I'll let Jakub handle it.
> 
>    How would I go about to set up a dual head? (X or textmode) Both
>    framebuffers get detected properly when booting, and the second one
>    (the CGsix) does _something_ (the screen clicks), but after that,
>    no activity ever on the second screen.
> 
> It might work if you create specific device nodes, or you run the X
> server with explicit device arguments on the command line.
> 
> For dual cgsix for example I just do:
> 
> mknod /dev/cgsix0 c 29 0
> mknod /dev/cgsix1 c 29 1

I have

[root@two /dev]# ls -l fb*
lrwxrwxrwx   1 root     root            3 Mar  7 20:09 fb -> fb0
crw-rw-rw-   1 root     root      29,   0 Apr 16 11:41 fb0
crw-rw-rw-   1 root     root      29,  32 Apr 16 11:41 fb1
[root@two /dev]#

(These came with the install)

/dev/fb0 is a creator (non-3d), fb1 is a cgsix.

 
> or add -dev arguments to the X command line.

That doesn't work for me. The Creator card still works, but nothing 
happens to the cgsix, which sort of makes sense in a way, since I run
XSun24.

I installed XFree86-Sun-3.3.2-13.sparc.rpm, and if I start that, specifying
the device, it fills the GX screen with garbage. (Progress!)
(Though then the creator doesn't work, obviously)

Using -fbinfo as argument to X shows that the servers identify the cards
right.


I don't know if I can get this stuff to run multihead if the two cards run 
a separate server.

Has anyone tried to use the fbdev server (on one of more heads)? 
That ought to be the preferred solution if I've understood the new console
system correctly. Only problem is that I couldn't find it, except for m68k.

So far about X. How would I do to have a certain VC (in text mode) on the 
other head?

This is still 2.1.109 from CVS.

/August.
-- 
Wrong on most accounts.  const Foo *foo; and Foo const *foo; mean the same: foo
being a pointer to const Foo.  const Foo const *foo; would mean the same but is
illegal (double const).  You are confusing this with Foo * const foo; and const
Foo * const foo; respectively. -David Kastrup, comp.os.linux.development.system
