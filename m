From: "Randy.Dunlap" <rddunlap@osdl.org>
Date: Tue, 01 Mar 2005 17:25:38 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <4224A592.1050909@osdl.org>
List-Id: <ultralinux.vger.kernel.org>
References: <200503010153.j211rGXB006246@laptop11.inf.utfsm.cl>
In-Reply-To: <200503010153.j211rGXB006246@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Horst von Brand <vonbrand@inf.utfsm.cl>
Cc: "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

Horst von Brand wrote:
> "David S. Miller" <davem@davemloft.net> said:
> 
>>On Mon, 28 Feb 2005 17:07:43 -0300
>>Horst von Brand <vonbrand@inf.utfsm.cl> wrote:
> 
> 
> [...]
> 
> 
>>>So, either the dependencies have to get fixed so floppy can't be modular
>>>for this architecture, or the relevant functions have to move from entry.S
>>>to the module.
> 
> 
>>I think the former is the best solution.  The assembler code really
>>needs to get at floppy.c symbols.
> 
> 
>>From my cursory look the stuff depending on the floppy.c symbols is just
> in the floppy-related code. Can't that be just included in floppy.c?
> (Could be quite a mess, but it looks like short stretches).

The code in entry.S looks self-contained (to me:), so moving it
somewhere else should just be a SMOP (mostly kbuild stuff)....

-- 
~Randy
