From: Roland Dreier <roland@topspin.com>
Date: Sat, 10 Jul 2004 04:05:45 +0000
Subject: arch/sparc64/Kconfig
Message-Id: <52brio8q1y.fsf@topspin.com>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org, linux-kernel@vger.kernel.org

I recently tested building the OpenIB InfiniBand drivers for sparc64.
These drivers add a new drivers/infiniband directory and hook into the
kernel config system by adding a 'source "drivers/infiniband/Kconfig"'
to the drivers/Kconfig file.

However, I discovered that arch/sparc64/Kconfig includes individual
drivers/xxx/Kconfig files rather than the main drivers/Kconfig.  This
means that hooking in the infiniband Kconfig requires changing the
sparc64 Kconfig.

I looked at arch/sparc64/Kconfig and found that the only files it does
not include that are included by drivers/Kconfig are

    drivers/cdrom/Kconfig
    drivers/char/Kconfig
    drivers/macintosh/Kconfig
    drivers/message/i2o/Kconfig
    drivers/misc/Kconfig

cdrom is safe because the whole thing depends on ISA.  macintosh is
safe because it depends on PPC || MAC.  misc is safe because it only
includes one entry that depends on X86.

So I guess my questions are, first, is there any reason why the
message/i2o and especially the char Kconfigs are left out of the
sparc64 Kconfig, and second, would a patch changing sparc64 to use the
main drivers/Kconfig be accepted?

Thanks,
  Roland
