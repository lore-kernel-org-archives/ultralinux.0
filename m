From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 14 May 1998 05:44:51 +0000
Subject: Re: 2 weird problems (first ethernet)
Message-Id: <marc-linux-ultrasparc-90222356531028@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Thu, 14 May 1998 13:28:10 +1000
   From: Grant Beattie <gb@zero.net.au>

   sparc systems have the hardware address burned into the PROM, not
   the ethernet device. The behavior you're seeing is correct.

And furthermore if it is a problem, you can add args to ifconfig to
set the ethernet address on each interface to whatever you like.

Later,
David S. Miller
davem@dm.cobaltmicro.com
