From: "David S. Miller" <davem@redhat.com>
Date: Tue, 25 May 2004 22:12:02 +0000
Subject: Re: [PATCH 3/4] Consolidate sys32_select
Message-Id: <20040525151202.58010d51.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
References: <200404161800.22367.arnd@arndb.de>
	<200404161805.55224.arnd@arndb.de>
	<1085522532.969.91.camel@tux.rsn.bth.se>
In-Reply-To: <1085522532.969.91.camel@tux.rsn.bth.se>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Martin Josefsson <gandalf@wlug.westbo.se>
Cc: arnd@arndb.de, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org


Just fix the code to use compat_ptr().  That's what we created
that macro for :-)

