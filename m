From: Horst von Brand <vonbrand@inf.utfsm.cl>
Date: Tue, 01 Mar 2005 01:53:11 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <200503010153.j211rGXB006246@laptop11.inf.utfsm.cl>
List-Id: <ultralinux.vger.kernel.org>
In-Reply-To: Message from "David S. Miller" <davem@davemloft.net> 
   of "Mon, 28 Feb 2005 15:51:42 -0800." <20050228155142.12ae31a7.davem@davemloft.net> 
References: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
In-Reply-To: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "David S. Miller" <davem@davemloft.net>
Cc: linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

"David S. Miller" <davem@davemloft.net> said:
> On Mon, 28 Feb 2005 17:07:43 -0300
> Horst von Brand <vonbrand@inf.utfsm.cl> wrote:

[...]

> > So, either the dependencies have to get fixed so floppy can't be modular
> > for this architecture, or the relevant functions have to move from entry.S
> > to the module.

> I think the former is the best solution.  The assembler code really
> needs to get at floppy.c symbols.

From my cursory look the stuff depending on the floppy.c symbols is just
in the floppy-related code. Can't that be just included in floppy.c?
(Could be quite a mess, but it looks like short stretches).
-- 
Dr. Horst H. von Brand                   User #22616 counter.li.org
Departamento de Informatica                     Fono: +56 32 654431
Universidad Tecnica Federico Santa Maria              +56 32 654239
Casilla 110-V, Valparaiso, Chile                Fax:  +56 32 797513

