From: "David S. Miller" <davem@redhat.com>
Date: Mon, 29 Apr 2002 20:14:31 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-102011190023526@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


You need to subtract 2047 (the Sparc64 "stack bias") to the stack you
pass to clone.
