From: Mike Bennett <mbennett@netcom.com>
Date: Sat, 16 May 1998 16:52:55 +0000
Subject: UltraSPARC lock performance
Message-Id: <marc-linux-ultrasparc-90222356531041@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi -

I've looked with great interest at the UltraLinux codebase; great
accomplishment!

I've recently been doing a deal of performance work on SPARC/Solaris, and
had a suggestion with regards to SMP lock performance.

Currently, I see (based on the 2.1.102 release snapshot shown by the
LXR folks) that the locking primitive used is the ldstub primitive.
I've been doing performance analysis of wait-free algorithms and have 
found a very striking performance difference between using ldstub 
and the 'cas' (compare-and-swap) uSPARC instruction to implement locking 
primitives.

On a single processor, cas outperforms ldstub by a good margin.  On an
SMP machine, the difference is extreme.  One of the properties of ldstub
on the 2+ cpu uSPARCS is the requirement that ldstub lock the bus; cas
does not have this characteristic.

If you take a simple lock call implemented with 'ldstub' and one with 'cas'
and time it on a 3-way or better system, a graph of execution time shows
a cas primitive having a fairly linear improvement in throughput; however,
ldstub takes a HUGE performance hit on the 3rd cpu and gets progressively
worse as you add cpus.  Moral, is, if you use ldstub don't run more than
2 cpus (2 is slightly better performing than one, but nowhere near the
speed of 'cas').

There are sample 'cas' lock implementations in the SPARC v9 architecture
manual (section J?).  For a kernel implementation, it might be worthwhile
to check it out for yourself.

Great work; hope this helps -
  -mike bennett  (mbennett@netcom.com)
