From: David Miller <davem@davemloft.net>
Date: Mon, 18 Dec 2006 09:36:04 +0000
Subject: Re: of_ioremap / of_iounmap imbalance
Message-Id: <20061218.013604.71102386.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb0612121442m25faf623qf28d1d564dbf5b89@mail.gmail.com>
In-Reply-To: <ec7cefb0612121442m25faf623qf28d1d564dbf5b89@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: "Eric Brower" <ebrower@gmail.com>
Date: Tue, 12 Dec 2006 14:42:13 -0800

> There's an imbalance in .../arch/sparc64/kernel/of_device.c whereby
> of_ioremap() will intelligently request_region() or
> request_mem_region() as appropriate for the address space, but
> of_iounmap() will always unmap the region as an IO address.  This,
> naturally, causes a fair bit of badness.
> 
> In my case, I'm dealing with an Ebus device-- I suppose I can assume
> the memory space is already completely mapped, but it would be nice to
> request/release_region for the purposes of bookkeeping.
> 
> Can we safely assume of_ioremap will only be used for MEM space
> addresses, and therefore skip the IO space dealing in request_region()
> and perform release_mem_region() in of_iounmap() or is this not
> sufficient?
> 
> If not, since our address space context is gone during of_iounmap(),
> would it be wise to follow the lead of PCI regions and embed an "IO
> Space" bit at the bottom of IO region addresses for later querying?
> The read[bwl]/write[bwl] routines would then need to mask off that
> bit...

Thanks a lot Eric, I'll look into this.

I think we'll need to change of_iounmap() to take the struct resource
pointer as a parameter, just like of_ioremap(), in order to fix this
properly.
