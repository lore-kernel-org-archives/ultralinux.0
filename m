From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 19 Nov 1998 13:50:57 +0000
Subject: Re: Still no go with the happy meal on the scsi/hme card on sun ultra 10
Message-Id: <marc-linux-ultrasparc-91151764126568@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91148320602842@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91148320602842@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: rick@dgii.com (Rick Richardson)
   Date: 	Wed, 18 Nov 1998 17:25:52 -0600 (CST)

   I just tried to load UP1.1 on an Ultra 30.  This particular ultra
   30 has a broken onboard ethernet controller, so we have a scsi/hme
   card in it.

 ...

   So I guess I can confirm that there seems to be something wrong
   with the ethernet driver, if that helps.

   Unfortunately, I *am* a programmer, but I can't do anything to help
   this situation until I get at least one of these confounded Ultra's
   loaded in the first place.

I'm convinced it is a problem in our PCI interrupt mapping code after
doing some investigations with Stephan's machine.  Eddie and I will
come up with a solution to this, and then we'll have Jakub or one of
us make test boot images for you to play with.

Later,
David S. Miller
davem@dm.cobaltmicro.com
