From: Adrian Bunk <bunk@stusta.de>
Date: Fri, 02 Sep 2005 22:38:16 +0000
Subject: [Bug 2683] arch/sparc64/kernel/sunos_ioctl32.c: sys_ioctl wrong?
Message-Id: <20050902223816.GC3657@stusta.de>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Kernel Bugzilla #2683 contains the following report:

<--  snip  -->

Problem Description:
The potential error is detected by a static analysis tool in
/arch/sparc64/kernel/sunos_ioctl32.c:163-168

163   case _IOW('i', 21, struct ifreq): /* SIOCSIFMTU */
164         ret = sys_ioctl(fd, SIOCSIFMTU, arg);
165         goto out;
166   case _IOWR('i', 22, struct ifreq): /* SIOCGIFMTU */
167         ret = sys_ioctl(fd, SIOCGIFMTU, arg);
168         goto out;


May be changed to:
163   case _IOW('i', 21, struct ifreq32): /* SIOCSIFMTU */
164         ret = compat_sys_ioctl(fd, SIOCSIFMTU, arg);
165         goto out;
166   case _IOWR('i', 22, struct ifreq32): /* SIOCGIFMTU */
167         ret = compat_sys_ioctl(fd, SIOCGIFMTU, arg);
168         goto out;


Can anyone confirm whether it is a bug or not?

<--  snip  -->

Please review this issue.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed

