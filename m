From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 10 Jan 1999 10:23:04 +0000
Subject: Re: UltraPenguin 1.1.9 and SMP
Message-Id: <marc-linux-ultrasparc-91602323725853@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91593890928604@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91593890928604@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Danny Bowdler <db0654@isdn.sbc.com>
   Date: 	Fri, 8 Jan 1999 10:52:03 -0600 (CST)

   When booting SMP I get "keyboard: not present", and am unable to start X, this
   is using the kernels supplied in "/boot"

I distinctly remember fixing this over the last couple weeks, because
I introduced the bug :-) Make sure you are running a very recent
kernel image, try using the latest kernel rpms Jakub put into the
UP-1.1.9 installation tree.

Later,
David S. Miller
davem@dm.cobaltmicro.com
