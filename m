From: "David S. Miller" <davem@redhat.com>
Date: Mon, 14 Aug 2000 21:35:54 +0000
Subject: Re: [PATCH] __u64 in user space
Message-Id: <marc-linux-ultrasparc-96631334317734@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96628836405720@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96628836405720@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


32-bit userspace should be getting their headers from
asm-sparc and every Sparc distribution makes sure this
is the case even if a sparc64 kernel drives the machine.

Your change is wrong :-)

Later,
David S. Miller
davem@redhat.com
