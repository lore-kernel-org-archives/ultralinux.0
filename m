From: "David S. Miller" <davem@redhat.com>
Date: Thu, 05 Apr 2001 05:04:26 +0000
Subject: Re: XFree4.0.3 on Ultralinux (kernel 2.4.3)
Message-Id: <marc-linux-ultrasparc-98644711631708@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98644352025191@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98644352025191@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Russell Davies writes:
 > Has anyone managed to get the very latest XFree86 (4.0.3) working on an
 > Ultra 5? (ATI Mach64 3d Rage Pro) I keep getting system lockups whenever
 > I attempt to startx.
 > 
 > Any advice appreciated.

Only the SBUS and UPA framebuffers work, no PCI devices work yet.

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
