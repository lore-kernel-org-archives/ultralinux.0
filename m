From: "David S. Miller" <davem@davemloft.net>
Date: Mon, 28 Feb 2005 23:51:42 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <20050228155142.12ae31a7.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
In-Reply-To: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Horst von Brand <vonbrand@inf.utfsm.cl>
Cc: linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

On Mon, 28 Feb 2005 17:07:43 -0300
Horst von Brand <vonbrand@inf.utfsm.cl> wrote:

> So, either the dependencies have to get fixed so floppy can't be modular
> for this architecture, or the relevant functions have to move from entry.S
> to the module.

I think the former is the best solution.  The assembler code really
needs to get at floppy.c symbols.
