From: Sean Callanan <sc843@bard.edu>
Date: Tue, 15 Jan 2002 19:39:12 +0000
Subject: Lots of 64-bit success!
Message-Id: <marc-linux-ultrasparc-101112385609135@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Dear mailing list:

I would like to report that with the help of many people on this list (Ben
Collins, Jakub Jelinek, and others - thank you!) I have managed to get a
LinuxFromScratch system working on an UltraSparc computer, with a hybrid
32-bit/64-bit userland which is so complete that I can compile Emacs and
the XFree86 libraries for sparc64 with no more difficulty than for sparc.

I also have X 4.1.0 working on my Ultra 5, thanks again to Ben Collins for
pointing to Dave S. Miller's patch.

The combination of software I used to do this was:
  - GCC 3.0.3 unpatched - first 32-bit native, then 32->64 cross, then
    64-bit native
  - Binutils 2.11.2 unpatched - same as above
  - glibc 2.2.4 unpatched

I'm also using devfs for my /dev tree, which has so far worked wonderfully
(I use the /dev/disk/... entries in my fstab, and use /dev/misc/sunmouse
for X).

Would there be any interest in my tar-ing everything up and putting it on
an ISO for people who want to experiment with a 64-bit userland?

Thanks again for all the help, everybody.

Sincerely,
Sean Callanan

--
"The surest sign of intelligent life in the universe is that none of it
has tried to contact us." -- Calvin (www.calvinandhobbes.com)

