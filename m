From: David Miller <davem@twiddle.net>
Date: Sat, 20 Mar 1999 09:55:02 +0000
Subject: Re: cp1500
Message-Id: <marc-linux-ultrasparc-92192349500494@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92192319500398@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92192319500398@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


The cache test only fails if the IOMMU mappings and translations for
the PCI controller are not setup correctly.

How much ram is in this machine?  You may want to update to the latest
cvs kernel sources as I have fixed several things to get my 2GB ram
AXmp machine working properly.

Later,
David S. Miller
davem@redhat.com
