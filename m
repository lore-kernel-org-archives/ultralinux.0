From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 04 Nov 1998 10:41:42 +0000
Subject: Re: Still no go with 10mb on 100mb card
Message-Id: <marc-linux-ultrasparc-91017594313892@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91009247508389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91009247508389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 4 Nov 1998 10:37:54 +0000 (GMT)
   From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>

   It was detected as eth0 successfully (the onboard hme was detected
   as eth1) but it didn't seem to be able to receive packets
   properly. tcpdump from the remote side showed it sending out arp
   queries and showed the corect reply being sent back but the ultra
   just kept sending out arp queries as if it hadn't received
   anything. The card itself works fine with Solaris. I ended up
   removing the card completely after which an installation went fine
   with the on-board hme (apart from later non-network problems that I
   mention in the other message).

There were some problems with scsi/eth PCI cards on Ultra5's earlier,
when was the most recent kernel you have tried with the card in the
machine?  We believe this particular to be fixed by now.

Later,
David S. Miller
davem@dm.cobaltmicro.com
