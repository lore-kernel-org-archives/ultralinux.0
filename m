From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Mon, 13 Jul 1998 10:40:22 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531022@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, Jul 13, 1998 at 02:27:27AM -0400, Qiru Zhou wrote:
> After I looked the web page:
> http://www.sun.com/microelectronics/SPARCengineUltraAXmp
> 
> 1. Operating system cost, stability and performance:
> Unlike low end dual PII's, nobody will buy it just to
> play with it. Then the question is what OS should I use.
> If I use Solaris, what is the cost of the OS+dev environment?
> >From my last experience, this will be over $3000 per user.
> If I use Linux SMP for Sparc, what is the current status of
> it? Is it stable enough for a production system? Actually,

To play with, get an AXi. A bootable system with 128MB of memory
and maybe 4GB of disk should be obtainable for under $3K total.
A four-user copy of Solaris Server costs around $600 or less.
If you want a low-cost SMP Sun to play with, there are
a few places you can get remanufactured Suns for pretty
cheap. The Ultra 2s are still holding their price, and sell for
maybe $6-10K used depending on configuration. You can get
a dual-processor SS 20 or even a 1000 for less than $5K, 
if you don't mind messing around with Mbus stuff.

I, too am very interested in how UltraPenguin would do on
the AXmp, and still would like very much to know what
people thought about this...

> Line one means you have to fill at least 8 slot of identical
> DIMMS and line two means these DIMM are pretty old and you
> need special order. The EDO/FPM DIMMS are extremely non-standard.
> Read http://silicon.micron.com/crucial/cart/html/selector.cfm,
> then you know what I am talking about. I've in several occassion
> to asked vendor make a special assemble of these DIMMs.

In my experience, EDO ECC DIMMs are generally
available. From http://www.pricewatch.com I see that
32MB units should cost around $38, meaning you could
populate eight slots with a total of 256MB for around
$300. 128MB modules for this board should be well under
$200 each. Anyone who sells any of the AX* motherboards
should have the correct memory in stock. The procurement
group at my office has had no trouble finding DIMMs such
as these, and they do a lot more PC stuff than Sun stuff.
Offline I can give you the names of some vendors if
you want...

> I hope this time Sun
> learned how to compete and makes some interesting offfers. Otherwise
> I don't think there are going to be long that Sun drops their
> Sparc from workstation line, as SGI did.

Same here. Sun does have, however, a record of being
extremely scrappy, independant and stubborn, often
to a fault. They are also doing reasonably well
in terms of sales. Following the release of the AXi,
the sales of that board quickly cleared out their
inventory and overran their production; there was about
a 30-day period when you pretty much couldn't buy one.
I don't expect them to cave in any time soon.

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
