From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Sun, 12 Jul 1998 23:59:53 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531019@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

OK, so now this is really interesting. I had no idea that
my mail would solicit this kind of response, especially
with a complete lack of any attempt to answer the actual
question (i.e. what will this thing do under Linux).

But since y'all raise the point, I think it might be well
to examine it a little.  I'm curious about the accuracy
of the assertion that the AXmp is overpriced compared to
commodity x86 hardware. First of all, vis-a-vis the AXmp,
Is there any "commodity" hardware? There's the Goliath, and
by the end of the year there should be some 450NX boards
around, but... commodity? A Goliath-based configuration
with top-end Pros should easily run into five digits,
hardly chicken feed. If you don't want to build one
yourself, there's always Compaq, HP, ALR, etc., but Sun has
nothing on those guys as far as price is concerned... Price
out a decently-configured 4-way ProLiant 7000 with 200MHz
Pros each at 1MB cache, and I think that you'll find that
it ain't pocket change. So what hardware, advertised in
Computer Shopper or whatever, would you compare the AXmp
to and find that the AXmp is way overpriced? If you want
to compare to, say, four uniprocessor or two dual-processor
systems, I'd say that would be a apples-and-oranges thing,
and you'd probably want to compare to the AXi, which sells
for around $1800, motherboard and processor together,
has dual-channel Symbios SCSI, 10/100 Ethernet and two
independant PCI busses, three slots on each. You can
easily build an 300MHz AXi-based system with a half-gig
of memory for under $5,000, showing SPEC95 ratings in the
mid-to-upper teens.

But back to the AXmp, it was dissed somewhat on the basis
of I/O, which I don't understand. The AXmp has four PCI
busses -- two sets of two, each set bridged into a 72-bit
crossbar channel; each set has a 66MHz bus and a 33MHz
bus. The memory bus operates at 576 bits wide into the
crossbar, and each of two UPA processor complexes pipe in
at 144bits wide and 120MHz with the 360MHz processors. The
board costs around $6000, the 300MHz processors around
$2200 each, and the memory is standard 168-pin DIMMs.

Xeon processors are in the same price range as the
UltraSPARC II processors, and, although the Xeon does
better on integer and the SPARC better on floating point,
the sum of SPECfp95 and SPECint95 for a 400MHz Xeon is
almost exactly the same as that for a 300MHz UltraSPARC
II. I can believe that a 450NX motherboard will cost less
than the AXmp (something that remains to be seen), but I
don't see the I/O capacity in the 450NX PCIset that I see
in the Sun Crossbar switch.

As far as what you hang off the back in the way of RAID
devices, it seems to me that the situation is largely the
same between a 450NX system and an AXmp. The AXmp uses
the 53C876 and the SC450NX, for example (which looks,
I must say, like a *very* nice platform) uses a 53C896
and a 53C810AE.  But the AXmp has more PCI bandwidth
than the SC450NX.  When I need a back end disk device,
I ususally use the Kingston DS-500 9-bay rackmount fully
decked out with dual power supplies, DE-100 SCA hot-swap
carriers & frames, a CMD CRD-5440 SCSI-to-SCSI controller
and a 6V lead-acid battery. Lately we've been populating
them with the Fujitsu MAB3091-SC 9.1 GB drives, which work
well with the CMD, run cool and of which I bought a big
batch recently for $640 each. A 4U rack-mount enclosure
with 45GB of disk in a RAID 5 setup (5 data, 1 parity,
1 hot spare, 1 warm spare) runs somewhere around $10K in
aggregate. You can put this thing on the back of just about
anything you want... Pentium, Xeon, AXmp, UltraEnterprise
6000, Alpha, whatever.

[And BTW, I'm looking at the AXmp not for file servers
but for compute servers, so I could care less about the
back-end disk. This is more of a Beowulf kind of situation,
and wondering about UltraPenguin on the AXmp is related
to this.  I've got users who burn up machines for months
straight doing stochastic simulations and monte-carlo
models.  In these cases, all I care about are local
CPU-memory bandwidth and floating point performance,
and the SPARC machines still beat the pants off an x86
for this; and yes, an Alpha or a PowerPC could probably
do better, but we've been a Sun shop since 1985 and other
RISC architectures are a hard sell...]

As far as maintenance and support, I generally take as
little as possible. Sun's bronze contracts aren't that
much, and you always have the option of buying spare parts
yourself. We mostly use Solaris on our SPARC systems,
but if UltraPenguin became a viable option for the AXmp,
then the Solaris support issue would largely go away
when the application allows it. (Although Sun still
makes you buy a Solaris RTU for the SME motherboards).

So, yean, the UltraEnterprise GigaPlane stuff is
outrageously priced. The 450 is still up there although
not quite as bad.  And yeah, you can build a decent
dual-processor x86 server for $2K (and that's what I do
for NT print servers, for example...), but when you get
into the quad-processor range, the AXmp seems to me to be
one of the most cost-competitive things that Sun has done
in a long time.  Please tell me how I'm wrong about this...

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
