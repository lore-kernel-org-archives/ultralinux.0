From: Stephan van Hienen <s.v.hienen@cable.a2000.nl>
Date: Thu, 14 May 1998 00:21:08 +0000
Subject: 2 weird problems (first ethernet)
Message-Id: <marc-linux-ultrasparc-90222356531025@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

first ethernet
ok i put back te card with kernel 2.1.101 (compiled ok)
and booted now it reports :

sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)
eth0: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet 08:00:20:96:18:b0
eth1: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet
08:00:20:96:18:b0        

excuse me same ethernet hardware adress ??

yes its true :

eth0: Auto-Negotiation unsuccessful, trying force link mode
eth0: Link down, cable problem?
eth0: Auto-Negotiation unsuccessful, trying force link mode
eth0: Link down, cable problem?

i then plug it on eth1 (the pci plugin card (with wide scsi connector
external))
and :

eth0: Link is up using internal transceiver at 10Mb/s, Half Duplex. 

what is this ?
can i change the ethernet adres somewehre in de boot prom or something ?
