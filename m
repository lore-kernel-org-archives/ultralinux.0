From: Nix <nix@esperi.demon.co.uk>
Date: Mon, 03 Feb 2003 17:35:03 +0000
Subject: Re: strange sparc64 -> i586 intermittent but reproducible NFS write errors to one and only one fs
Message-Id: <marc-linux-ultrasparc-104429521920641@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-104300775807656@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-104300775807656@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 19 Jan 2003, Trond Myklebust said:
> It sounds rather strange that this particular patch should introduce
> an EIO, but here it is (fresh from BitKeeper)

... and indeed it doesn't.

The problem still exists in -pre9, but is very much rarer and harder to
replicate; I've sene it only half a dozen times in two weeks, in each
case during an ftp retrieval; I'm assuming there's something about the
write patterns used by ncftp (lots of few-KB appends, far apart in time)
that triggers it.

So it really is merely a timing change that has brought a pre-existing
problem into the light.

I'm going to try to come up with something that consistently reproduces
this as well, so I can track down the origins of this bug more
correctly.

-- 
2003-02-01: the day the STS died.
