From: "David S. Miller" <davem@redhat.com>
Date: Wed, 21 Jul 2004 21:47:40 +0000
Subject: Re: [PATCH] Fix sparc64 build with CONFIG_COMPAT=n
Message-Id: <20040721144740.11bb8440.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
References: <52fz808qwy.fsf@topspin.com>
	<20040720200352.5c17b3f7.davem@redhat.com>
	<52llhd2ira.fsf@topspin.com>
In-Reply-To: <52llhd2ira.fsf@topspin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Roland Dreier <roland@topspin.com>
Cc: ultralinux@vger.kernel.org, linux-kernel@vger.kernel.org

On Wed, 21 Jul 2004 13:43:53 -0700
Roland Dreier <roland@topspin.com> wrote:

> Just out of curiousity, is there any practical use for sparc64 without
> CONFIG_COMPAT?  My impression was that everyone used 32-bit userspace
> (except for possibly a few executables).

Someone could build a 64-bit pure system.
