From: Horms <horms@verge.net.au>
Date: Thu, 13 Oct 2005 04:34:30 +0000
Subject: Re: Fix for sparc64 irq.c compile error
Message-Id: <loom.20051013T063004-852@post.gmane.org>
List-Id: <ultralinux.vger.kernel.org>
References: <di9nk82mm0@ds9.argh.org>
In-Reply-To: <di9nk82mm0@ds9.argh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Sven Hartge <hartge <at> ds9.argh.org> writes:

> 
> Hello.
> 
> Please excuse me for contacting you so bluntly, but after some hours of 
> debugging, I feel the need to contribute my little patch, in the hope it 
> is somewhat helpful.
> 
> The problem: On sparc64, arch/sparc64/kernel/irq.c is missing the 
> inclusion of asm/io.h, which causes readb() and writeb() to be undefined. 
> Please see the attached patch for the correction.
> 
> This should also go into the -stable-series.

Given that this patch has been queued for stable it caught my
eye for possible inclusion in Debian packages. But if I'm not
mistaken its just a build cleanup. Certainly the Debian kernels
do seem to build, well possibly with the exception of the 2.6.13
variant. Could someone shed some light on if a particular config
option is needed to show this problem and if it is only
a >= 2.6.13 problem?

Thanks

-- 
Horms

P.S: Sorry if this mail turns out poorly, I'm experimenting
with posting using gmane as I'm not on the list. Ohh, and
please CC me on replies.





