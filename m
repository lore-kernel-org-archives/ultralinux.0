From: "David S. Miller" <davem@redhat.com>
Date: Sat, 15 Jan 2000 00:06:05 +0000
Subject: Re: About the coherence of the D-cache
Message-Id: <marc-linux-ultrasparc-94791154226032@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94789462417593@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94789462417593@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Fri, 14 Jan 2000 16:11:11 +0900
   From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>

   I am accessing user-space memory from the network bottom-half using
   ASI_PHYS_USE_EC. I copied quite a bit from
   arch/sparc64/kernel/ptrace.c and everything looks fine.

   Nevertheless I want to be sure that when I write data no stalled
   data is left on the D-cache.

   In the normal use of ptrace functions, I think there isn't data
   from in traced process on the primary cache so there is no
   problem. But in my case, it is very possible that the data I am
   reading/writing is there. I whould even want to read/write it
   directly...

   So which is the opinion of the master hackers?

The UltraSparc-IIi addendum warns heavily about using D-cache bypass
load/store operations to memory which could potentially be in the
D-cache.

Some models of the UltraSparc will in fact update the D-cache on
D-cache bypass writes if the data is hit in the D-cache, and some
will also read directly from the D-cache on D-cache bypass loads
if the data is found there.

But depending upon this behavior is dangerous.  I have seen
UltraSparc-II models not update the D-cache on such stores which
hit, causing all kinds of problems.  This is why the TLB miss
strategy was completely redone in 2.2.14 and recent 2.3.x kernels.

The ptrace code happens to work because great pains are taken to avoid
touching the kernel side mappings of the underlying physical pages
used by user processes.  Since the D-cache is write though, any user
side stores will be visible from the D-cache bypass loads on the
kernel side.  This is still slightly buggy, if the kernel mapping
and the user mapping have the same D-cache color, problems could
still result.

So the general rule is, use D-cache bypass _only_ when you can
guarentee that these are the only accesses to that data.

Later,
David S. Miller
davem@redhat.com
