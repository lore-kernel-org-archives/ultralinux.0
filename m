From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sat, 16 May 1998 19:45:27 +0000
Subject: Re: UltraSPARC lock performance
Message-Id: <marc-linux-ultrasparc-90222356531043@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531041@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531041@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


We use CAS where applicable in the Ultra SMP support code.

Also your claims about ldstub are incorrect, they do not lock the bus,
just like CAS, if the L2 cache line being accessed is valid and owned
exclusively, as per the UPA interface documentation in the UltraSparc
programmers manuals.

What you are seeing is the difference between wait free algorithms and
spinlock based resource protection in general, which you failed to
mention at all.

Later,
David S. Miller
davem@dm.cobaltmicro.com
