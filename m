From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 18 Nov 1998 12:36:53 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91143735316423@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Ugh, are all of your disks hung off of the fibre channel cards?
Crap... Jakub, you know why it fails if this is true.

One quick hack would be to hook up a spare SCSI disk to one of the
normal scsi controllers on the machine, or else wait for a fix from
either myself or Jakub.

Later,
David S. Miller
davem@dm.cobaltmicro.com
