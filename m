From: "David S. Miller" <davem@davemloft.net>
Date: Thu, 01 Sep 2005 23:48:31 +0000
Subject: Re: Please review the sparc64 bugs in the kernel Bugzilla
Message-Id: <20050901.164831.129514045.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <20050901002932.GB3766@stusta.de>
In-Reply-To: <20050901002932.GB3766@stusta.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Adrian Bunk <bunk@stusta.de>
Date: Fri, 2 Sep 2005 01:34:01 +0200

> May I ask why?

Because I shouldn't have to spend time on some bugzilla web site just
to work on some bug.  The bugs should come to me, by being reported to
the appropriate mailing list, I shouldn't have to seek them.

The kernel bugzilla exists only to make some bean counters at some
corporations happy that there is some place to track kernel bugs.  But
this is wholly incompatible with how upstream kernel development
works.  The kernel bugzilla database would never have been created
with the sole impetus of the core kernel folks, that's simply not how
we work.

That is why.

Sending bugzilla reports directly to the list is not the answer.
That means a lot of garbage ends up on the list, so if anything
it should either:

1) get forwarded by hand by someone willing to volunteer to
   filter out the crap
2) get sent directly to the right mailing list in the first
   place, bypassing the kernel bugzilla altogether

The latter is what happens in practice for sparc stuff.
