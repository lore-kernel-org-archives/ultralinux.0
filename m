From: "David S. Miller" <davem@redhat.com>
Date: Mon, 05 Jan 2004 21:03:29 +0000
Subject: Re: [PATCH] [SPARC64] use drivers/block/Kconfig
Message-Id: <20040105130329.55e96b5f.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
References: <20040103164847.GK6982@parcelfarce.linux.theplanet.co.uk>
In-Reply-To: <20040103164847.GK6982@parcelfarce.linux.theplanet.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 3 Jan 2004 16:48:47 +0000
Matthew Wilcox <willy@debian.org> wrote:

> Hi Dave.  Sparc64 is actually missing a few options at the moment
> (like Cryptoloop) because it has its own block menu rather than using
> the generic one.  I don't see a reason to not use the generic one,
> so here's a patch.

Applied, thanks Matthew.
