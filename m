From: John Gilmore <gnu@toad.com>
Date: Wed, 20 May 1998 19:54:43 +0000
Subject: Re: Decompression error with silo and new kernel
Message-Id: <marc-linux-ultrasparc-90222356531061@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531054@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531054@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> So, for now, modularize your kernel a bit. I will in the mean time try to
> think how to make SILO able to handle larger sizes (but there will probably
> be a limitation 3M-100K even then). The problem is SILO is statically linked
> to 0x280000 address, which is caused by old Suns where they guarantee only
> 3M of contiguous mapped memory.

It was very easy to make SPARC machine code location-independent, at
least in the v7-v8 days, particularly if you only need to relocate it
on large boundaries (e.g. move it in 64K or 16MB increments).  GCC can
generate such code (for shared libraries).  SILO is probably a small
enough program that making it able to relocate itself to avoid the
memory of the incoming kernel is possible without much work.

Another alternative is to have it decompress the kernel image into
available (high) memory, then use a small location-independent loop to
copy it into its final resting place.

A third alternative would be to remap the virtual address space to do
the same thing, avoiding the final memory-to-memory copy.  The kernel
should be able to handle starting itself up from *any* set of physcial
memory pages (i.e. it can't assume that it's in low physical memory --
low phys memory might be broken, so the ROMs are designed to allocate
other memory to low virtual addresses in that case).

If you want the kernel to end up in low *physical* memory as well as
low *virtual* memory, one thing you could do is relocate SILO in physical
memory as it starts.  Copy SILO into non-conflicting physical memory,
change the VM to map the new copy of SILO instead of the old one,
change the VM to map the kernel's low physical memory location into
contiguous (high) virtual addresses, decompress it into there, then
reset the VM to a nice flat map and jump to the kernel.  You'd still 
have to only use the physical page frames that the ROMs had handed you,
rather than assume that all memory from location 0 exists and works.

	John
