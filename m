From: "David S. Miller" <davem@davemloft.net>
Date: Tue, 01 Mar 2005 23:04:13 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <20050301150413.31d0b533.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <4224A592.1050909@osdl.org>
	<200503011926.j21JQ5dP007149@laptop11.inf.utfsm.cl>
In-Reply-To: <200503011926.j21JQ5dP007149@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Horst von Brand <vonbrand@inf.utfsm.cl>
Cc: rddunlap@osdl.org, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

On Tue, 01 Mar 2005 16:26:05 -0300
Horst von Brand <vonbrand@inf.utfsm.cl> wrote:

> Right. But where? I was thinking under arch/sparc64/drivers/floppy.S or
> such. And then there would need to be some make magic for it to get picked
> up and included only for sparc64. Sounds doable, if somewhat messy.

Sparc 32-bit has the same problem btw.  It's a direct IRQ handler that
doesn't need to save any trap state.
