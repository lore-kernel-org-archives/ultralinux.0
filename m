From: "Kaj-Michael Lang" <milang@tal.org>
Date: Mon, 04 Mar 2002 08:52:46 +0000
Subject: Re: updated util-linux for ultrasparc redhat 6.2
Message-Id: <marc-linux-ultrasparc-101523203102402@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101519362401241@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101519362401241@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> it goes wrong on the following, does someone know how to fix this/what i'm
> missing :

Your kernel and/or glibc is old or compiled against an old kernel that does
not know about pivot_root on sparc (I think, correct me if I'm wrong). You
really don't need it so just remove it from the makefile and compile, it
should work.


