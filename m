From: "David S. Miller" <davem@davemloft.net>
Date: Sun, 09 Oct 2005 04:12:21 +0000
Subject: Re: Fix for sparc64 irq.c compile error
Message-Id: <20051008.211221.104627349.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <di9nk82mm0@ds9.argh.org>
In-Reply-To: <di9nk82mm0@ds9.argh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Sven Hartge <hartge@ds9.argh.org>
Date: Sun, 9 Oct 2005 02:23:18 +0200 (CEST)

> The problem: On sparc64, arch/sparc64/kernel/irq.c is missing the 
> inclusion of asm/io.h, which causes readb() and writeb() to be undefined. 
> Please see the attached patch for the correction.
> 
> This should also go into the -stable-series.

Applied, thanks Sven.
