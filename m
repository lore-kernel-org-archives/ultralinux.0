From: David Miller <davem@twiddle.net>
Date: Sat, 27 Mar 1999 22:00:09 +0000
Subject: Re: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92257172506093@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92255674631513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92255674631513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


You need to update to the latest kernels, it is a bug in setting up
interrupts for the 2nd and 3rd cards on PCI.

Later,
David S. Miller
davem@redhat.com
