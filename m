From: "David S. Miller" <davem@redhat.com>
Date: Fri, 09 Feb 2001 16:40:11 +0000
Subject: Re: a bug in sparc/sparc64: test_bit()?
Message-Id: <marc-linux-ultrasparc-98173705530908@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98172782300242@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98172782300242@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Ralf Liesegang writes:
 > if i disassemble the function I see, that the CPU "loop" in: 
 > 
 > #define	tasklet_unlock_wait(t) while (test_bit(TASKLET_STATE_RUN, &(t)->state))
 > 
 > include/asm-sparc64/bitops.h: test_bit() do:
 > 
 > 	return (1UL & (((__const__ long *) addr)[.....]
 > 

The correct fix is to put a memory barrier ("rmb()") in the
test_bit while loop of tasklet_unlock_wait.

Thanks for pointing this out.

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
