From: David Miller <davem@twiddle.net>
Date: Wed, 14 Apr 1999 23:49:40 +0000
Subject: Re: HME on ultrasparc
Message-Id: <marc-linux-ultrasparc-92413543909708@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92413396908580@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92413396908580@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: "Dale B" <d_a_l_e_@hotmail.com>
   Date: 	Wed, 14 Apr 1999 18:51:03 EDT

   Is there a way to force 100MB Full Duplex?

Use 'ethtool', it was specifically made for this purpose.
And make sure you are using the latest kernels (Jakub released them
and an updated ethtool rpm today).

Later,
David S. Miller
davem@redhat.com
