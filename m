From: Andi Kleen <ak@muc.de>
Date: Fri, 17 Jul 1998 12:44:39 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531055@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Jul 17, 1998 at 02:34:10PM +0200, David S. Miller wrote:
>    From: Andi Kleen <ak@muc.de>
>    Date: 17 Jul 1998 13:22:47 +0200
> 
>    "David S. Miller" <davem@dm.cobaltmicro.com> writes:
> 
>    > Not true at all, it depends upon how a port was done.  The Sparc
>    > backend creates a situation where all use inline asm's are considered
>    > multi-instruction.  GCC does not require this.  And if this were
>    > changed, inline assembly could be scheduled just like anything else.
> 
>    In theory it could be done (by specifying the function units in a fourth
>    column similar to what is done in the machine descriptions).
> 
> No, you just need to remove the classification of all asm's as
> type attribute "multi", then any single insn asm can be moved around
> and scheduled just like any other insn.  In fact, if you wrote your
> register constraints like a good little boy gcc will know how to
> handle the dependencies right too (to deal with load latencies to an
> input register used by your asm) etc.
> 
> It's totally trivial.

But how does it know what CPU units are used by the inline assembly? It 
does not make much sense to schedule without knowing that. 

-Andi
