From: "David S. Miller" <davem@redhat.com>
Date: Wed, 20 Mar 2002 21:44:07 +0000
Subject: Re: sys_call clone in Sparc64?
Message-Id: <marc-linux-ultrasparc-101666090732276@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101663078500638@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101663078500638@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


It is there, use __NR_clone as the system call number
(from asm/unistd.h)

