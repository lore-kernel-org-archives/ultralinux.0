From: Matthew Jacob <mjacob@feral.com>
Date: Mon, 13 Jul 1998 14:54:38 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531026@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



On Mon, 13 Jul 1998, Robert G. Brown wrote:


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

I think we're all beginning to talk about different things. I believe
you can build a very reasonable 2 (to maybe 4-way SMP with off the shelf
Intel parts- good both for CPU/thread performance as well as the
attachment of a couple PCI busses. That'll not give you a balanced system,
but a *better* balanced system than a workstation with a single bus.

When you get into bigger than this, that's when, as you say, it
gets very expensive. And single SCSI disks *are* cheap, but the
infrastructure for 100 of them gets quite expensive.

> 
> I thought the real claim to fame of all of Sun's multiprocessing
> systems (and the SP2, and the Power Challenge, and the...) has always
> been their really fast/expensive IPC bus, not their interface to
> peripherals.

wrt Sun: Surely you're kidding (unless you're referring only to the EXXXK
series).
