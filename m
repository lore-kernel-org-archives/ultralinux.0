From: David Miller <davem@twiddle.net>
Date: Wed, 14 Apr 1999 04:30:42 +0000
Subject: Re: Accessing an arbitrary user space from a module
Message-Id: <marc-linux-ultrasparc-92406932915557@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92406432012725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92406432012725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 14 Apr 1999 11:44:41 +0900
   From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>

   First case: I am not at interrupt time but I am in the context of
   another process like a deamon or whatever.

copy_to_user(user_pointer, kernel_pointer, size);

   Second case: At interrupt time, what can I do?

Allocate a kernel buffer in your driver beforehand, provide a device
driver mmap() operation to let the user map this into his address
space, at interrupt time copy into the kernel buffer and the data will
magically appear into the user's mapping of it.

Later,
David S. Miller
davem@redhat.com
