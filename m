From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>
Date: Wed, 14 Apr 1999 02:44:41 +0000
Subject: Accessing an arbitrary user space from a module
Message-Id: <marc-linux-ultrasparc-92406432012725@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I writing a module for an implementation of distributed shared memory
on a group of computers over a LAN, but I still have not enought
experience with the kernel.

My problem is that I don't know how to access an arbitrary user memory
space from my module. Let us suppose I have a buffer in kernel space
and I want to copy it in the memory space of process A at some virtual
address.


First case: I am not at interrupt time but I am in the context of
another process like a deamon or whatever.
I tried something using get_fs() and set_fs() but I don't really know
what a mm_segment_t  represents for an ultrasparc, I hoped it would
work but it didn't (it wasn't a very rigourous test so may be it
should work!)

Second case: At interrupt time, what can I do? I understand that
provoquing a page falt is not an option so I got carefully the pte_t
corresponding to the destination where I want to write, checked its
validity with pte_present() but finally got a fault when accessing
using paddr = (pte_page(*pte)|(addr&(~PAGE_MASK))+PAGE_OFFSET; where
paddr should be the physical address. But I guess I will run into more
trouble to mark the page as dirty or if the buffer I want to write is
accross two or more pages.

Please, could you tell me where I am wrong and where should I look for
more information on the web or in the source?

Thank you,

Marc
