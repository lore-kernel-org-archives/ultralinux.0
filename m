From: James Nelson <james4765@verizon.net>
Date: Sun, 26 Dec 2004 13:47:00 +0000
Subject: [PATCH] sparc64: remove x86 bootloader reference in Kconfig
Message-Id: <20041226134721.11731.74495.27433@localhost.localdomain>
List-Id: <ultralinux.vger.kernel.org>
References: <20041226134715.11731.39190.49206@localhost.localdomain>
In-Reply-To: <20041226134715.11731.39190.49206@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org
Cc: akpm@osdl.org, linux-kernel@vger.kernel.org, James Nelson <james4765@verizon.net>

Removes refences to x86-specific bootloader in arch/sparc64/Kconfig.

Signed-off-by: James Nelson <james4765@gmail.com>

diff -urN --exclude='*~' linux-2.6.10-original/arch/sparc64/Kconfig linux-2.6.10/arch/sparc64/Kconfig
--- linux-2.6.10-original/arch/sparc64/Kconfig	2004-12-24 16:35:25.000000000 -0500
+++ linux-2.6.10/arch/sparc64/Kconfig	2004-12-26 08:29:28.653936457 -0500
@@ -79,8 +79,8 @@
 	  terminal (/dev/tty0) will be used as system console. You can change
 	  that with a kernel command line option such as "console=tty3" which
 	  would use the third virtual terminal as system console. (Try "man
-	  bootparam" or see the documentation of your boot loader (lilo or
-	  loadlin) about how to pass options to the kernel at boot time.)
+	  bootparam" or see the documentation of your boot loader (silo)
+	  about how to pass options to the kernel at boot time.)
 
 	  If unsure, say Y.
 
