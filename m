From: Keith Owens <kaos@ocs.com.au>
Date: Sat, 02 Sep 2000 01:40:30 +0000
Subject: Re: 2.4.0 do_fork() change, all architectures
Message-Id: <marc-linux-ultrasparc-96785875031662@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96785844931380@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96785844931380@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 1 Sep 2000 18:23:13 -0700, 
"David S. Miller" <davem@redhat.com> wrote:
>UGH, I thought you said you just added the new argument at the end of
>do_fork's argument list?  That way makes the assembler come out the
>easiest (ie. the one line changes I sent you) on Sparc and on other
>architectures as well.
>
>Any chance to change this so that the stack_top thing is added
>as the last arg to do_fork?
>
>Thus, currently, the asm I sent you doesn't work.  I would not have
>made this mistake if you had sent me the patch and not just an english
>explanation of the change :-(

Will do.  The IA64 patch on kernel.org already has the extra parameter
inserted just for IA64 and I based my patch on their change.  No big
deal, I can change IA64 to put the do_fork parameter at the end, it
just means changing ia64 entry.S as well.

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
