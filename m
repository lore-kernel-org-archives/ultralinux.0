From: Ward Deng <wdeng@KachinaTech.COM>
Date: Sun, 26 Jul 1998 04:29:46 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531085@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I am also more interested in memory bandwidth than L2
> cache, although at 4MB the cache probably begins to be
> helpful. Some of our tasks will grab 100MB or more of
> main memory and spin through it repeatedly for weeks
> or months at a time, thus rendering the cache largely
> irrelevant. The memory bandwidth in the UPA is a step
> in the right direction for us, although it is still the
> case that several processors all squeezing memory access
> through a single memory port can be a drag (the AXmp has a
> single 144-bit -- 128 bits of data and 16 bits of ECC --
> UPA port for memory; the EDO memory is accessed 576 bits at
> a time, but then it is multiplexed through XB9 crossbars
> into the single UPA port). Multiple memory ports as on
> the gigaplane help, but in the end it seems kind of silly
> spending tens of thousands of dollars to get a machine and
> then to tune your workload to make it work like a cluster;
> I'd still rather have a pile of single or dual processor
> machines; I can afford a lot more processors that way,
> for one thing.  The biggest problem I have here is
> physical space, although I saw a nice 2U chassis at
> Linux Expo (DCG Computers), and the manufacturer is working
> on modifying it for the AXi motherboard. Too bad the
> AXi's memory channel is choked off to Pentium II levels.

[snip]

On my datasheets, AXi (Panther) has 144-bit memory path while Pentium II
is only 64-bit. AX (Photon) has 288-bit full-scale UPA. AXmp (Chrico)
has two UPAs with 576-bit memory path. In our tests, even AXi has much
better scalability than PII.

We experienced the same problem as Bob did. A large-scale computational
chemisty program ran dog-slow once the problem scaled up to practical
level on an Alpha-PC system while it ran blazing fast during development
phase. The reason: system throughput was too bad. HAL system was a big
improvement then until UltraSPARC came out. Most real computing jobs won't
fit in your SRAM cache no matter how big you make it.

This is why we are so interested in UltraSPARC architecture and try to
make it available to Linux users. We first started Pentium Pro and got
very disappointed. Then we found OEM Alpha PC (DEC intended for NT users)
was not a good candidate either. We hope UltraSPARC nodes make into
"Beowulf" clusters soon. Pricewise, I think UltraSPARC is very reasonable
comparing with Intel Xeon. Maybe SME should provide a version similar to
Intel Celeron (joke) just for marketing purpose.

--ward
