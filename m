From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 19 Nov 1998 19:22:05 +0000
Subject: Linux-2.1.129
Message-Id: <marc-linux-ultrasparc-91155026706092@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


It builds and works on Sparc platforms with only a tiny patch, found
below.  Feel free to go and test it out.

--- ../linux/drivers/char/Makefile	Thu Nov 19 11:27:12 1998
+++ linux/drivers/char/Makefile	Thu Nov 19 11:57:03 1998
@@ -44,12 +44,19 @@
 ifdef CONFIG_VT
 L_OBJS += keyboard.o
 endif
-ifneq ($(ARCH),m68k)
+ ifneq ($(ARCH),m68k)
+  ifndef CONFIG_MBX
 L_OBJS += pc_keyb.o defkeymap.o
+  endif
+ endif
+else
+ifdef CONFIG_PCI
+L_OBJS += defkeymap.o keyboard.o
 endif
-ifdef CONFIG_MAGIC_SYSRQ
-L_OBJS += sysrq.o
 endif
+
+ifdef CONFIG_MAGIC_SYSRQ
+LX_OBJS += sysrq.o
 endif
 
 ifeq ($(CONFIG_ATARI_DSP56K),y)
