From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 04 Nov 1998 10:37:54 +0000
Subject: Re: Still no go with 10mb on 100mb card
Message-Id: <marc-linux-ultrasparc-91017594113890@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91009247508389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91009247508389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
>    Date: 	Tue, 3 Nov 1998 12:29:08 +0100 (CET)
>    From: Stephan van Hienen <ddx@cable.a2000.nl>
> 
>    no go with the sun happy meal on eth0 (on the scsi/ethernet pci board)
>    it's connected to a cable modem at 10mbit/sec half duplex
>    and it gives ethernet time outs
> 
> All I can say at this point is that you  must have some very strange
> ethernet switch/hub because every single switch/hub I test on here at
> Cobalt with both 10 and 100baseT & both full and half duplex all work
> correctly with the happy meal.

I didn't see the beginning of this thread but the message above
caught my eye. When I tried to install on my ultra5 here (for
details see my "Mixed news: new IP 1.0.9 on Ultra5" message) I had
what sound like a very similar problem with the hme on the SunSwift
(scsi/ethernet) board. It was detected as eth0 successfully (the
onboard hme was detected as eth1) but it didn't seem to be able to
receive packets properly. tcpdump from the remote side showed it
sending out arp queries and showed the corect reply being sent back
but the ultra just kept sending out arp queries as if it hadn't
received anything. The card itself works fine with Solaris. I ended
up removing the card completely after which an installation went
fine with the on-board hme (apart from later non-network problems
that I mention in the other message).

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
