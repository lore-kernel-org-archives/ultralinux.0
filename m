From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Tue, 15 Dec 1998 22:08:45 +0000
Subject: Re: UltraSparc 10 Clone with Qlogic SCSI
Message-Id: <marc-linux-ultrasparc-91377140720854@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91370717917495@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91370717917495@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Tue, 15 Dec 1998 12:46:55 +0800 (SGT)
   From: Ong Lon Voon <rarf@ddns.org>

   Has anyone any success with this? It seems to be unsupported on the
   Supported Hardware list...

   On booting, no SCSI devices are found.

   Tried on an ultrasparc 2 clone too, but it could not mount the root
   filesystem at 0b:00. Any ideas? The cdrom is id 6 on the primary SCSI
   channel, and is recognised. Tried "linux root=/dev/sr0", but it didn't
   work too.

We have the means to support the QLogic SCSI PCI cards in such systems
(and therefore in Sun's Ether/SCSI PCI cards too) but since none of
the developers have any such cards to test I cannot enable the
driver.

I'm working on obtaining such a card right now, but until I do these
machines will be unsupported.

Later,
David S. Miller
davem@dm.cobaltmicro.com
