From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 18 Nov 1998 09:51:17 +0000
Subject: Re: ultrapenguin 1.1
Message-Id: <marc-linux-ultrasparc-91142214907128@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91138236309955@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91138236309955@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Tue, 17 Nov 1998 17:27:57 +0100
   From: leona@tristan.unipv.it (Alessandro Leona)

   Does ultrapenguin 1.1 run on a UltraSparc 10 Creator 3D ?  The
   uprocessor is a UltraSparc-IIi - 300MHz.  I succeeded in running
   rarp and tftp, but when the machine finishes loading a box appears
   in the upper left corner of the screen (sometimes it's a cross,
   sometimes an arrow) and the machine gets stuck with the message
   root child is f002ca28.  Do I need to put other files under the
   /tftpboot directory ?

The onboard ATI mach64 card is where output is going, hook a monitor
up to that video card, you'll see.  We're working on a fix, the
creator card should be prioritized as the main console just like the
PROM makes it.

So for now the workaround is to take out the creator card, and hook a
monitor up to the mach64 card.

Later,
David S. Miller
davem@dm.cobaltmicro.com
