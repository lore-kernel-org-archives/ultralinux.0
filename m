From: "Eddie C. Dost" <ecd@skynet.be>
Date: Thu, 14 May 1998 06:41:02 +0000
Subject: Re: 2 weird problems (first ethernet)
Message-Id: <marc-linux-ultrasparc-90222356531030@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)
> eth0: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet 08:00:20:96:18:b0
> eth1: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet
> 08:00:20:96:18:b0        
> 
> excuse me same ethernet hardware adress ??

This is how sparcs work, they have one ethernet hw address for the
complete workstation. You should never but both interfaces onto the
same physical network.

> eth0: Auto-Negotiation unsuccessful, trying force link mode
> eth0: Link down, cable problem?
> eth0: Auto-Negotiation unsuccessful, trying force link mode
> eth0: Link down, cable problem?
> 
> i then plug it on eth1 (the pci plugin card (with wide scsi connector
> external))

Nope, the devices are probed depending on bus layout, so eth0 is external
and eth1 is internal.


Eddie.
ecd@skynet.be
