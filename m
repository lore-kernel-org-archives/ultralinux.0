From: "Lawrence D. Lopez" <lopez@mv.mv.com>
Date: Mon, 13 Jul 1998 17:13:25 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531034@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I think its like this:

PCI bus 	33 MHZ
Memory bus	100 MHZ
L2 cache bus	200 MHZ
L1 cache bus	400 MHZ
Internal stuff	400 MHZ

So, internal bus speed depends on which internal bus!

Matthew Jacob wrote:
> 
> > but the memory interconnect is always the sticky wicket on SMP machines,
> > although for the PC, we simply dribble along at (now) 100mhz.  :)
> 
> Umm.. I thought that the new PC motherboards coming out are running
> at 400Mhz (no, not CPU speed- I mean internal bus speed...)
