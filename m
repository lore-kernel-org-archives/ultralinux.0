From: Ralf Baechle <ralf@oss.sgi.com>
Date: Mon, 31 Dec 2001 13:29:53 +0000
Subject: Re: [Linux-ia64] [PATCH][RFC][CFT] remove global errno from the kernel, make _syscallX kernel-only
Message-Id: <marc-linux-ultrasparc-100981339024445@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100980457911320@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100980457911320@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, Dec 31, 2001 at 02:11:31PM +0100, Andreas Schwab wrote:

> |> Please CC me on replies as I'm not on any of the lists posted to.
> |> 
> |> My intention is to push these to Linus for 2.5 if everyone agrees.
> |> They're probably too intrusive for 2.4 (although I'd love people
> |> to convince me otherwise).
> 
> I wouldn't mind putting it into 2.4.

While it may break things in userspace it will hopefully ensure correctness
for userspace, so better kill 'em now than later.  _syscallX() has a too
long history of causing problems.

  Ralf
