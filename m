From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 04 Nov 1998 01:08:56 +0000
Subject: Re: Still no go with 10mb on 100mb card
Message-Id: <marc-linux-ultrasparc-91014903505316@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91009247508389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91009247508389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Tue, 3 Nov 1998 12:29:08 +0100 (CET)
   From: Stephan van Hienen <ddx@cable.a2000.nl>

   no go with the sun happy meal on eth0 (on the scsi/ethernet pci board)
   it's connected to a cable modem at 10mbit/sec half duplex
   and it gives ethernet time outs

All I can say at this point is that you  must have some very strange
ethernet switch/hub because every single switch/hub I test on here at
Cobalt with both 10 and 100baseT & both full and half duplex all work
correctly with the happy meal.

Try another hub/switch/network if you can, I bet it works.

Then we can figure out what is so strange about the one where you have
the problems.

Later,
David S. Miller
davem@dm.cobaltmicro.com
