From: Joshua Uziel <uzi@uzix.org>
Date: Wed, 27 Sep 2000 01:15:18 +0000
Subject: Re: Couldn't find sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-97001720220366@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96995143407396@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96995143407396@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

* YAMAMOTO Taku <yamataku@layer-seven.com> [000926 03:00]:
> [root@xxx linux-2.2.16rh]# rpm -ivh
> /home/yamamoto/archives/kernel/kernel-headers-2.2.16-3.sparc.rpm
> 
> kernel-headers              ##################################################
> You must create /usr/include/asm/asm-sparc* symlinks first.

Hmm... look at the kernel source rpm's specfile to see why it
would give this error.

> /usr/include/bits/ioctl-types.h:25: asm/ioctls.h: No such file or
> directory

Look in /usr/include/asm and see if it's contents are fishy.  It
sounds like you may need to do something like go into /usr/include
and run:

        ln -s /usr/src/linux/include/asm-sparc asm

... or something like that.

> /usr/include/bits/sigcontext.h:28: asm/sigcontext.h: No such file or directory

Same problem again...

> /usr/include/linux/errno.h:4: asm/errno.h: No such file or directory

... and again ...

See if the problem is obvious and fixable... if you continue to have
problems with this, drop me and email and we'll go from there I guess...
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
