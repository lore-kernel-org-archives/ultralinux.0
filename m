From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>
Date: Fri, 14 Jan 2000 07:11:11 +0000
Subject: About the coherence of the D-cache
Message-Id: <marc-linux-ultrasparc-94789462417593@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am accessing user-space memory from the network bottom-half using
ASI_PHYS_USE_EC. I copied quite a bit from arch/sparc64/kernel/ptrace.c and
everything looks fine. 

Nevertheless I want to be sure that when I write data no stalled data is left on
the D-cache.

In the normal use of ptrace functions, I think there isn't data from in traced
process on the primary cache so there is no problem. But in my case, it is very
possible that the data I am reading/writing is there. I whould even want to
read/write it directly...

So which is the opinion of the master hackers?


Marc
