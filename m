From: "Eric Brower" <ebrower@gmail.com>
Date: Tue, 12 Dec 2006 22:42:13 +0000
Subject: of_ioremap / of_iounmap imbalance
Message-Id: <ec7cefb0612121442m25faf623qf28d1d564dbf5b89@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

DaveM, etc.

There's an imbalance in .../arch/sparc64/kernel/of_device.c whereby
of_ioremap() will intelligently request_region() or
request_mem_region() as appropriate for the address space, but
of_iounmap() will always unmap the region as an IO address.  This,
naturally, causes a fair bit of badness.

In my case, I'm dealing with an Ebus device-- I suppose I can assume
the memory space is already completely mapped, but it would be nice to
request/release_region for the purposes of bookkeeping.

Can we safely assume of_ioremap will only be used for MEM space
addresses, and therefore skip the IO space dealing in request_region()
and perform release_mem_region() in of_iounmap() or is this not
sufficient?

If not, since our address space context is gone during of_iounmap(),
would it be wise to follow the lead of PCI regions and embed an "IO
Space" bit at the bottom of IO region addresses for later querying?
The read[bwl]/write[bwl] routines would then need to mask off that
bit...

Thanks for any guidance.
-- 
E
