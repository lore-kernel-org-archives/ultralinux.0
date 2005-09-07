From: "David S. Miller" <davem@davemloft.net>
Date: Wed, 07 Sep 2005 03:12:50 +0000
Subject: Re: [Bug 2683] arch/sparc64/kernel/sunos_ioctl32.c: sys_ioctl
Message-Id: <20050906.201250.49871596.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <20050902223816.GC3657@stusta.de>
In-Reply-To: <20050902223816.GC3657@stusta.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Adrian Bunk <bunk@stusta.de>
Date: Sat, 3 Sep 2005 00:38:16 +0200

> Can anyone confirm whether it is a bug or not?

Yep, it's a bug.  I've checked in the suggested fix as
follows:

diff-tree 09bbe1043a65903c93f6b6df123e36e3584bfac7 (from 93c37f292110a37dd77e4cc0aaf1c341d79bf6aa)
Author: David S. Miller <davem@sunset.davemloft.net>
Date:   Tue Sep 6 20:12:15 2005 -0700

    [SPARC64]: Fix set/get MTU cases in sunos_ioctl()
    
    Need to use compat struct sizes and compat_sys_ioctl().
    Reported by Adrian Bunk via kernel bugzilla #2683
    
    Signed-off-by: David S. Miller <davem@davemloft.net>

diff --git a/arch/sparc64/kernel/sunos_ioctl32.c b/arch/sparc64/kernel/sunos_ioctl32.c
--- a/arch/sparc64/kernel/sunos_ioctl32.c
+++ b/arch/sparc64/kernel/sunos_ioctl32.c
@@ -152,11 +152,12 @@ asmlinkage int sunos_ioctl (int fd, u32 
 		ret = compat_sys_ioctl(fd, SIOCGIFCONF, arg);
 		goto out;
 
-	case _IOW('i', 21, struct ifreq): /* SIOCSIFMTU */
-		ret = sys_ioctl(fd, SIOCSIFMTU, arg);
+	case _IOW('i', 21, struct ifreq32):
+		ret = compat_sys_ioctl(fd, SIOCSIFMTU, arg);
 		goto out;
-	case _IOWR('i', 22, struct ifreq): /* SIOCGIFMTU */
-		ret = sys_ioctl(fd, SIOCGIFMTU, arg);
+
+	case _IOWR('i', 22, struct ifreq32):
+		ret = compat_sys_ioctl(fd, SIOCGIFMTU, arg);
 		goto out;
 
 	case _IOWR('i', 23, struct ifreq32):
