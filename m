From: Ramiro Estrugo <ramiro@netscape.com>
Date: Wed, 03 Jun 1998 12:25:07 +0000
Subject: Which ultra linux for porting mozilla ?
Message-Id: <marc-linux-ultrasparc-90222357630980@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi guys,

I work at netscape and i just got an ultra 1 computer.  My hope is to
port Mozilla and ultimately Communicator to ultra linux.

I already ported both mozilla and communicator to x86 redhat5, so a lot
of the code already works with glibc2.  We also have Alpha Linux (redhat
4.x) and MkLinux (redhat 5.x) ports.

So my question is this:

What distribution should I install ?  Im not too concerned about having
the most stable system in the world, what I want is mostly this:

1.  Whatever will be the most useful to ultra sparc linux users
2.  Something that can dual boot with solaris

Off the top of my head, here is a laundry list of stuff that is needed:

a.  jdk 1.1 (since the next release of communicator will support awt1.1)
b.  The motif shit, since lesstif does not work 100% yet.  On x86,
motif2.1 works with glibc2 (redhat5-ish).  Motif1.2 works with libc5
(redhat4-ish).  So I guess it depends on the answer to question 1.
above.  Are there vendors for this ?  I think Sparc Linux motif2.1 is
for sale at Metrolink.  Does it work on Ultra Linux ?

Im sure ill have lots of questions.  

I think that there is a bunch of code in communicator that ass-umes 32
bitness.  This sucks, but its the way it is.  When we did the Alpha
Linux port, it was barely useable (unstable) because of random
problems.  But, at least the bugs will get fixed.

Have any of you already build free mozilla on sparc linux ?  I believe
some folks have already built it on Sparc Linux.  We have someone at
netscape working on this port too.  This would be the first step.  We
could then take the changes for the official netscape releases and there
would be a native communicator on Ultra Linux with java, security and
all the other forbidden stuff.

I am not on this list - yet.  But if there is interest in this project,
then ill join.

thanks

-re
