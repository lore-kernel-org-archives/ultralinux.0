From: Roland Dreier <roland@topspin.com>
Date: Wed, 21 Jul 2004 20:43:53 +0000
Subject: Re: [PATCH] Fix sparc64 build with CONFIG_COMPAT=n
Message-Id: <52llhd2ira.fsf@topspin.com>
List-Id: <ultralinux.vger.kernel.org>
References: <52fz808qwy.fsf@topspin.com>
	<20040720200352.5c17b3f7.davem@redhat.com>
In-Reply-To: <20040720200352.5c17b3f7.davem@redhat.com> (David S. Miller's
 message of "Tue, 20 Jul 2004 20:03:52 -0700")
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "David S. Miller" <davem@redhat.com>
Cc: ultralinux@vger.kernel.org, linux-kernel@vger.kernel.org

    David> I like the big fix, and it allowed some cleanups too.  I've
    David> munged your patch a bit and this is what I'm currently
    David> testing.

Cool, my allnoconfig compile tests thank you.

Just out of curiousity, is there any practical use for sparc64 without
CONFIG_COMPAT?  My impression was that everyone used 32-bit userspace
(except for possibly a few executables).

 - R.
