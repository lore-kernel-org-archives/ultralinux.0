From: Andi Kleen <ak@muc.de>
Date: Fri, 17 Jul 1998 13:29:49 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531057@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Jul 17, 1998 at 02:46:54PM +0200, David S. Miller wrote:
>    Date: Fri, 17 Jul 1998 14:44:39 +0200
>    From: Andi Kleen <ak@muc.de>
> 
>    But how does it know what CPU units are used by the inline
>    assembly? It does not make much sense to schedule without knowing
>    that.
> 
> GCC doesn't get perfect scheduling in any event.  And it won't for
> some time until real superscalar facilities are added.

This is true for gcc, but Sun's compiler does near perfect scheduling for 
the UltraSparc chips afaik, so they have a bit different requirements. 

Do you see a better design for 100% schedulable inline assembler?

-Andi
