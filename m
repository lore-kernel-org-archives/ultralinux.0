From: Murray Stokely <murray@cdrom.com>
Date: Fri, 19 May 2000 12:34:37 +0000
Subject: "sparc_cpu_model" undefined
Message-Id: <marc-linux-ultrasparc-95874021030030@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


  I can't compile any code that includes asm/io.h with Red Hat 6.1, or
6.2 on my Ultra5.  This includes many useful programs such as 'sane',
the scanner drivers.  The defines are all messed up so that the
headers can't tell what type of sparc you are compiling for.  This
problem has been reported on this list before but I've never seen a
solution and can't find any with the search engine.  Can someone point
me in the right direction?

	Thanks,

	- Murray
