From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 06 May 1998 05:26:07 +0000
Subject: Re: UltraPenguin1.0.9 update
Message-Id: <marc-linux-ultrasparc-90222356530970@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530965@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530965@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Tue, 05 May 1998 17:12:30 -0400
   From: "Thomas A. Szybist" <szybist@boxhill.com>

   Hi, I just installed this, really great!  I just have two questions:

   1.	X seems a bit slow, very appearent on opaque moves.
	   Not a big deal, just wondering if this is expected.

They seem to not have put very much video memory in the Mach64 boards
found in the UltraPCI machines, so the X server can't cache very many
or very large glyphs.  I bet this is what you're seeing.

We plan on making some vast improvements to the Mach64 X server on
Ultra some time soon, it has a few deficiencies... but at least it
works ;-)

   2.	autofs doesn't seem to work.  I get this when starting it:

	   sys32_ioctl: Unknown cmd fd(5) cmd(40049363) arg(00024134)

	   and this when cd'ing to an autofs'd directory:

	   sys32_ioctl: Unknown cmd fd(5) cmd(20009361) arg(00000000)

Thanks for the report, I'll fix this, it should be easy.

Later,
David S. Miller
davem@dm.cobaltmicro.com
