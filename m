From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Sun, 26 Jul 1998 12:29:06 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531087@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, Jul 25, 1998 at 10:29:46PM -0600, Ward Deng wrote:
>
> On my datasheets, AXi (Panther) has 144-bit memory path while Pentium II
> is only 64-bit. AX (Photon) has 288-bit full-scale UPA. AXmp (Chrico)
> has two UPAs with 576-bit memory path. In our tests, even AXi has much
> better scalability than PII.

We have four of the AXi boards and have similarly
been very happy with them. Nonetheless, the
UltraSPARC IIi chip only has a 72-bit (64/8) window
on the memory subsystem. If you'll take a look at
http://www.sun.com/microelectronics/UltraSPARC-IIi/specs.html,
you'll see that the data lines feeding back to the
processor from the XCVR chip is only 72 bits wide.
On the AXi the path from the memory to the XCVR is 144
bits so that they can assure a full bandwidth feed to the
processor using commodity 60ns buffered EDO or FPM DIMMs.
I think that this is one reason why the AXi does so much
better than the PII on memory access; while both chips
have an 8-byte path to memory, the AXi is designed to keep
it filled. Note that, for example, you can usually run a
PII board with a single DIMM, while the AXi needs them in
multiples of two.

[The specs on the AXi claim only 400MBps for memory
throughput with a 300MHz processor. Since the path is
8 bytes wide, I concluded that the memory interface on
the 300MHz module runs at 50MHz, meaning that the 300MHz
processor is clock-sextupled. Does anyone know if this is
wrong? The block diagram shows the memory interface as
being runnable at 83MHz, I'd guess that the 333MHz chip
is clock-quadrupled?]

In the AXmp, the 576-bit channel is multiplexed down
to 144 bits into the processor; you can see this on
page 3-3 of the OEM manual:
http://www.sun.com/microelectronics/SPARCengineUltraAXmp/805-5865.pdf
(the block diagram on the Web is almost illegible). 
Still, the AXmp has two such 144-bit channels,
each channel shared between up to two processors.
When these 16-byte busses are set to run at 100MHz,
they result in a 1.6GBps memory channel. Running
flat out with four processors, this thing should
be able to pump upward of 3GBps out of memory, which
is to me just an amazing number for something selling
at this price. [Does anyone know if the 360MHz
processor will be running at 120MHz tripled on
the AXmp as it does on the Ultra 60? If so, this
would crank the memory channels up to 1.9GBps]
We have four four-processor AXmps on order. I'm
looking forward to them...

You can see from this that the AXi and the AXmp are
designed with the same kind of proportions. The
AXi processor has a 8-byte-wide channel, so that the
the memory is accessed in 16-byte chunks to assure
a steady feed from commodity memory. In the AXmp,
there are two 16-byte-wide channels, requiring
a full-speed 32-byte-wide feed. Thus the commodity
memory is accessed in 64-byte chunks and multiplexed
down.

> Maybe SME should provide a version similar to
> Intel Celeron (joke) just for marketing purpose.

I suppose that, comparing the the UltraSPARC II
to the UltraSPARC IIi, it could be argued that
the IIi is SME's Celeron-equivalent. It just
happens to be a whole lot less embarrasing. :-)

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
