From: "David S. Miller" <davem@redhat.com>
Date: Mon, 20 Jan 2003 06:01:24 +0000
Subject: Re: strange sparc64 -> i586 intermittent but reproducible NFS write
Message-Id: <marc-linux-ultrasparc-104304248432185@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-104300775807656@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-104300775807656@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 2003-01-19 at 13:00, Trond Myklebust wrote:
> It sounds rather strange that this particular patch should introduce
> an EIO, but here it is (fresh from BitKeeper)

It is possible in the context of the change causing a miscompile.
Another possibility is just timing differences causing different
sequences of events to occur than before.

