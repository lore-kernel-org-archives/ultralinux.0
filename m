From: Horst von Brand <vonbrand@inf.utfsm.cl>
Date: Tue, 01 Mar 2005 19:26:05 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <200503011926.j21JQ5dP007149@laptop11.inf.utfsm.cl>
List-Id: <ultralinux.vger.kernel.org>
In-Reply-To: Message from "Randy.Dunlap" <rddunlap@osdl.org> 
   of "Tue, 01 Mar 2005 09:25:38 -0800." <4224A592.1050909@osdl.org> 
References: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
In-Reply-To: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Randy.Dunlap" <rddunlap@osdl.org>
Cc: "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

"Randy.Dunlap" <rddunlap@osdl.org> said:
> Horst von Brand wrote:
> > "David S. Miller" <davem@davemloft.net> said:
> >>On Mon, 28 Feb 2005 17:07:43 -0300
> >>Horst von Brand <vonbrand@inf.utfsm.cl> wrote:

> > [...]

> >>>So, either the dependencies have to get fixed so floppy can't be modular
> >>>for this architecture, or the relevant functions have to move from entry.S
> >>>to the module.

> >>I think the former is the best solution.  The assembler code really
> >>needs to get at floppy.c symbols.

> >>From my cursory look the stuff depending on the floppy.c symbols is just
> > in the floppy-related code. Can't that be just included in floppy.c?
> > (Could be quite a mess, but it looks like short stretches).

> The code in entry.S looks self-contained (to me:), so moving it
> somewhere else should just be a SMOP (mostly kbuild stuff)....

Right. But where? I was thinking under arch/sparc64/drivers/floppy.S or
such. And then there would need to be some make magic for it to get picked
up and included only for sparc64. Sounds doable, if somewhat messy.

But thinking a bit farther, if every arch and random driver starts playing
this kind of games, we'll soon be in a world of hurt. Not sure if it is
worth it.

Other solution was to #ifdef that stuff into floppy.c, but again at the
end of that way lies madness.

I'll see what I come up with. Recomended reading on the whole kbuild stuff?
-- 
Dr. Horst H. von Brand                   User #22616 counter.li.org
Departamento de Informatica                     Fono: +56 32 654431
Universidad Tecnica Federico Santa Maria              +56 32 654239
Casilla 110-V, Valparaiso, Chile                Fax:  +56 32 797513
