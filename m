From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 16 Jul 1998 12:27:30 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531048@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


If the distributed.net people would provide source code to their
clients, we could help you.  But they don't, so on top of not being to
help you, I cannot endorse even running their binaries.

Their VIS rc5 code was done by hand in assembly, no C compiler can
properly take full advantage of the VIS instruction set although the
latest EGCS releases will output VIS instructions for a limited number
of operations if configured properly.

Later,
David S. Miller
davem@dm.cobaltmicro.com
