From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Sun, 26 Jul 1998 03:34:23 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531083@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, Jul 25, 1998 at 05:45:53PM -0700, Rich Martin wrote:

> I'm more and more convinced that inter-processor communication is no 
> longer a first order issue. Focusing on memory system efficiency 
> (effective use of the cache and memory BW) will get you much more bang for
> your buck. Even in the parallel case, I would spend money on huge L2
> caches and memory bandwidth over processor interconnect. 

(The following is more an amplification than an argument...)

In nearly every iterative or repetitive algorithm, it
is usually possible to farm out individual iterations to
loosely-coupled machines. Many of the problems that crop
up in econometric simulations (my particular concern)
are highly iterative or repetitive in nature. For example,
it is common to design an analytical model and then throw
thousands of real or made-up sets of initial conditions,
assumptions and/or parameters at it; in the end one hopes
to judge the quality of the model by these thousands of
outcomes, often by contrasting them to empirical data. It
seems to me that, as long as a workload is made up of
a large number of independent calculations which can
be mapped out at an initialization stage, then a Beowulf
approach can easily be applied. However, if you have a very
large, single problem that must be calculated in a single
pass, then the Beowulf approach may well be throttled by
the the interconnect, as Ward Deng has suggested.

I enthusiastically agree with the assessment that memory
bandwidth is a major contributing factor to the performance
of a Beowulf, in our case (I work at the Federal Reserve
Board), this extends beyond clusters and into the design
of our general computing facility. We have found that,
even with the Suns, it is not cost-effective for us
to implement machines with greater than two to four
processors. The biggest trouble we run into is that so
many of our tasks saturate the memory channel that it is
impractical to time-share beyond two or three users on
*any* Sun machine, even a gigaplane machine such as an
Ultra 3000. Since our budget does not allow for buying
a hundred gigaplane machines, we must resort to smaller
machines, which in any event seem to work about as well for
our stuff (keeping in mind that much of it is written in
commercial packages such as Mathematica, Matlab, S-plus,
SAS and Troll, and as such it is not always possible to
take advantage of parallelizing compilers).

I am also more interested in memory bandwidth than L2
cache, although at 4MB the cache probably begins to be
helpful. Some of our tasks will grab 100MB or more of
main memory and spin through it repeatedly for weeks
or months at a time, thus rendering the cache largely
irrelevant. The memory bandwidth in the UPA is a step
in the right direction for us, although it is still the
case that several processors all squeezing memory access
through a single memory port can be a drag (the AXmp has a
single 144-bit -- 128 bits of data and 16 bits of ECC --
UPA port for memory; the EDO memory is accessed 576 bits at
a time, but then it is multiplexed through XB9 crossbars
into the single UPA port). Multiple memory ports as on
the gigaplane help, but in the end it seems kind of silly
spending tens of thousands of dollars to get a machine and
then to tune your workload to make it work like a cluster;
I'd still rather have a pile of single or dual processor
machines; I can afford a lot more processors that way,
for one thing.  The biggest problem I have here is
physical space, although I saw a nice 2U chassis at
Linux Expo (DCG Computers), and the manufacturer is working
on modifying it for the AXi motherboard. Too bad the
AXi's memory channel is choked off to Pentium II levels.

Speaking of space, has anyone ever tried using PICMG
single-board computers for performance computing? Some
of these things are starting to look pretty interesting,
for example it is nominally possible to put four of
these: http://www.dtims.com/lbc8522pic.htm onto one
of these: http://www.dtims.com/pbp4x4pic.htm, potentially
resulting in eight 400MHz Pentium IIs in a single 4U
rackmount chassis, or eighty in a single 70" high
19" machine rack. You'd be pretty limited on disk,
it isn't clear that the backplane's power distribution
can handle all those Pentium IIs, and I know those
boards aren't cheap, but they seem pretty interesting.
Until recently, a lot of these kinds of boards used
Realtek 10/100 or just "10" Ethernet chips, which
are no great bandwidth demons, but then these new
DTI boards are using Intel 82558 chips. 

Then again, perhaps something like this:
http://www.jump.de/potd/mops5.jpg. One ought to be
able to get a few hundred of *those* into a single
rack, although the per-node memory is pretty limited :-)

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
