From: Ralf Liesegang <Ralf.Liesegang@fujitsu-siemens.com>
Date: Fri, 09 Feb 2001 14:08:53 +0000
Subject: a bug in sparc/sparc64: test_bit()?
Message-Id: <marc-linux-ultrasparc-98172782300242@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

I'm working on a port to HAL SPARC64 cpu's, sometimes the system suddenly
hung.  What i found is, that one CPU "loop" somewhere in: 

	net/core/dev.c: 
	deliver_to_old_ones(...)
	{
		[...]
		tasklet_disable(...);
		[...]
	}

if i disassemble the function I see, that the CPU "loop" in: 

#define	tasklet_unlock_wait(t) while (test_bit(TASKLET_STATE_RUN, &(t)->state))

include/asm-sparc64/bitops.h: test_bit() do:

	return (1UL & (((__const__ long *) addr)[.....]

generating assembler output show me:

	[...]
        ldx     [%l0+8], %o2
        srax    %o2, 1, %o2
        and     %o2, 1, %o2
        cmp     %o2, 0
.LL1769:
        bne,pt  %icc, .LL1769
	[...]

the value of "bit", is just read once and then never again.

if I change test_bit() to:

	return (1UL & (((volatile long *) addr)[.....]

.LL1758:
        ldx     [%l0+%o1], %o0
        andcc   %o0, 2, %g0
        bne,pt  %xcc, .LL1758
	[...]

the value of "bit", is reread again. 


as test_bit() is defined, i think that the compiler generate correct (but
not what we wanted) assembler output.

i'm using:  sparc64-linux-gcc -v

 Reading specs from /usr/lib/gcc-lib/sparc64-suse-linux/egcs-2.92.11/specs
 gcc version egcs-2.92.11 19980921 (gcc2 ss-980609 experimental)

so, my question: 

do i need a newer compiler, "my" change to test_bit() or anything else? 

	
thanks,
	Ralf
-- 
| Ralf Liesegang          Phone:  +49-5251-8-15131                  |
| FSC EP OS UX1           Fax:    +49-5251-8-16104                  |
| Heinz-Nixdorf-Ring      EMail:  Ralf.Liesegang@fujitsu-siemens.com|
| D-33106 Paderborn                                                 | 
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
