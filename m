From: David Miller <davem@twiddle.net>
Date: Wed, 14 Apr 1999 07:12:58 +0000
Subject: Re: Accessing an arbitrary user space from a module
Message-Id: <marc-linux-ultrasparc-92407435618717@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92406432012725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92406432012725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Wed, 14 Apr 1999 16:11:42 +0900
   From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>

   I thougth they accessed only the 'current' task's memory
   space... :-(

Right, only the current task.

See the arch/sparc64/kernel/ptrace.c code for a possible way to touch
the data of other tasks.

Later,
David S. Miller
davem@redhat.com
