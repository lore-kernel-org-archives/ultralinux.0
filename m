From: "David S. Miller" <davem@redhat.com>
Date: Sat, 02 Sep 2000 01:23:13 +0000
Subject: Re: 2.4.0 do_fork() change, all architectures
Message-Id: <marc-linux-ultrasparc-96785844931380@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


UGH, I thought you said you just added the new argument at the end of
do_fork's argument list?  That way makes the assembler come out the
easiest (ie. the one line changes I sent you) on Sparc and on other
architectures as well.

Any chance to change this so that the stack_top thing is added
as the last arg to do_fork?

Thus, currently, the asm I sent you doesn't work.  I would not have
made this mistake if you had sent me the patch and not just an english
explanation of the change :-(

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
