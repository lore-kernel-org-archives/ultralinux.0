From: Robert HYATT <hyatt@cis.uab.edu>
Date: Mon, 13 Jul 1998 14:29:35 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531025@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Mon, 13 Jul 1998, Robert G. Brown wrote:

> 
> ...and "manufacturer's who use Intel chips in 4+ CPU SMP machines have to
> actually compete in an open market"....
> 
> I'm also not sure about the original premise.  At the high end of
> multiprocessing systems (or even at the low end:-), I would have
> expected the bulk of the cost to be in the design and implementation
> of the bus structure that connects the processors to enable shared
> access to memory, peripherals, and each other to facilitate high speed
> IPC's.  Disk is cheap (especially when packaged for a standard
> interface, i.e. -- SCSI UW on a PCI bus) and really NIC's (similarly
> packaged) are too.  Getting disk and networks onto a bus (proprietary
> or otherwise) and interfaced with lots of processors and memory and
> working out all the DMA issues and cache coherence issues and
> busmastering issues -- that's expensive.
> 
> I thought the real claim to fame of all of Sun's multiprocessing
> systems (and the SP2, and the Power Challenge, and the...) has always
> been their really fast/expensive IPC bus, not their interface to
> peripherals.
> 


you are correct.  If you take a high-end machine, like a Cray T90, over
50% of the total cost is the memory interconnection network, because it
is so hard to provide almost a terrabyte of data/second spread over 32
cpus.  :)

but the memory interconnect is always the sticky wicket on SMP machines,
although for the PC, we simply dribble along at (now) 100mhz.  :)
