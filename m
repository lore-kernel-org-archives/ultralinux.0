From: Qiru Zhou <qzhou@research.bell-labs.com>
Date: Mon, 13 Jul 1998 06:27:27 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531020@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

After I looked the web page:
http://www.sun.com/microelectronics/SPARCengineUltraAXmp

I think it is an interesting HW and I believe it does have
better throughput and I believe SUN has better design for
highend SMP HW (crossbar, etc.). But I do have the following
questions to be answered if I really serious on it:

1. Operating system cost, stability and performance:
Unlike low end dual PII's, nobody will buy it just to
play with it. Then the question is what OS should I use.
If I use Solaris, what is the cost of the OS+dev environment?
From my last experience, this will be over $3000 per user.
If I use Linux SMP for Sparc, what is the current status of
it? Is it stable enough for a production system? Actually,

2. HW component availability, and cost:
From the spec, I read:
Memory		576 bits wide, 2GB max in 2 banks, 16 slots
Memory type	Fast page mode/EDO, 72 bits, 3.3V DIMMS

Line one means you have to fill at least 8 slot of identical
DIMMS and line two means these DIMM are pretty old and you
need special order. The EDO/FPM DIMMS are extremely non-standard.
Read http://silicon.micron.com/crucial/cart/html/selector.cfm,
then you know what I am talking about. I've in several occassion
to asked vendor make a special assemble of these DIMMs.

If Sun can fill up the DIMMS with good price, then I don't need
to worry about mem upgrade. But from my last experience, it
will cost you 3-4 times higher than a PC (Intel or Alpha).

I am not sure what other PC PCI card that I can put there.
We have SGI O2s with PCI slots. But I almost cannot put
any PCI card from retail store, since it is not compatible
with O2 or there is simply no driver for it (you may develop
your own, if you really want.). The problem is that these
SUN and SGI PCI systems are not open-architecture. And there
market is so small, compare with PC quantity, There are
almost no third party vendors are interested in develop a
driver for them. We saw the same the same problem for Apple,
too.

I like SUN HW, and I really like to see other good CPU to
compete with Intel. But the problem is these guys kill themself.
I guess an open architecture system makes a big difference.


We've been seriously looking for SUN solutions severel times and
we've been pushed away by their price and the performance (Sparc
are constantly at the low end in the CPU war, and in our benchmark
tests, even consider Intel and Intel clones). I hope this time Sun
learned how to compete and makes some interesting offfers. Otherwise
I don't think there are going to be long that Sun drops their
Sparc from workstation line, as SGI did.


================================Qiru Zhou                           qzhou@research.bell-labs.com
2D428 Bell Labs, Lucent Technologies          tel (908) 582-4562
600 Mountain Avenue, Murray Hill, NJ 07974    fax (908) 582-7308
================================
