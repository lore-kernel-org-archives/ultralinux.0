From: "Randy.Dunlap" <rddunlap@osdl.org>
Date: Tue, 01 Mar 2005 19:34:59 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <4224C3E3.6020707@osdl.org>
List-Id: <ultralinux.vger.kernel.org>
References: <200503011926.j21JQ5dP007149@laptop11.inf.utfsm.cl>
In-Reply-To: <200503011926.j21JQ5dP007149@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Horst von Brand <vonbrand@inf.utfsm.cl>
Cc: "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

Horst von Brand wrote:
> "Randy.Dunlap" <rddunlap@osdl.org> said:
> 
>>Horst von Brand wrote:
>>
>>>"David S. Miller" <davem@davemloft.net> said:
>>>
>>>>On Mon, 28 Feb 2005 17:07:43 -0300
>>>>Horst von Brand <vonbrand@inf.utfsm.cl> wrote:
> 
> 
>>>[...]
> 
> 
>>>>>So, either the dependencies have to get fixed so floppy can't be modular
>>>>>for this architecture, or the relevant functions have to move from entry.S
>>>>>to the module.
> 
> 
>>>>I think the former is the best solution.  The assembler code really
>>>>needs to get at floppy.c symbols.
> 
> 
>>>>From my cursory look the stuff depending on the floppy.c symbols is just
>>>in the floppy-related code. Can't that be just included in floppy.c?
>>>(Could be quite a mess, but it looks like short stretches).
> 
> 
>>The code in entry.S looks self-contained (to me:), so moving it
>>somewhere else should just be a SMOP (mostly kbuild stuff)....
> 
> 
> Right. But where? I was thinking under arch/sparc64/drivers/floppy.S or
> such. And then there would need to be some make magic for it to get picked
> up and included only for sparc64. Sounds doable, if somewhat messy.
> 
> But thinking a bit farther, if every arch and random driver starts playing
> this kind of games, we'll soon be in a world of hurt. Not sure if it is
> worth it.

Then go with Dave's suggestion:  don't allow modular floppy
in Kconfig.

> Other solution was to #ifdef that stuff into floppy.c, but again at the
> end of that way lies madness.
> 
> I'll see what I come up with. Recomended reading on the whole kbuild stuff?

It's all in Documentation/kbuild/

-- 
~Randy
