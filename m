From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 15 Oct 1998 11:54:53 +0000
Subject: PCMCIA on Ultra
Message-Id: <marc-linux-ultrasparc-90849548805501@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

If anyone has the hardware to play with PCMCIA, I have made this short patch
which will make you able to at least compile the PCMCIA package.
There are still some issues to be done, e.g. irq has to be always stored in
an int and not in a char and stuff like that, but as I don't know if anybody
is going to at least try it, I'm stopping here. Another issue is whether we
want 32bit programs to work with the PCMCIA ioctls or not. If we just allow
64bit cardmgr etc., it will be much easier.
The patch is against pcmcia-cs-3.0.5:

--- pcmcia-cs-3.0.5/modules/Makefile.jj	Tue Jul 28 01:08:04 1998
+++ pcmcia-cs-3.0.5/modules/Makefile	Thu Oct 15 13:18:32 1998
@@ -16,6 +16,19 @@ ifeq ($(ARCH),ppc)
 CC := $(CC) -fno-builtin -msoft-float
 endif
 
+ifeq ($(ARCH),sparc64)
+IS_EGCS := $(shell if $(KERN_CC) --version 2>&1 | grep 'egcs' > /dev/null; then echo y; else echo n; fi)
+NEW_GAS := $(shell if $(KERN_LD) --version 2>&1 | grep 'elf64_sparc' > /dev/null; then echo y; else echo n; fi)
+ifneq ($(IS_EGCS),y)
+CC := $(KERN_CC) -mno-fpu -mtune=ultrasparc -mmedlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare
+else
+CC := $(KERN_CC) -m64 -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare
+endif
+ifeq ($(NEW_GAS),y)
+LD := $(KERN_LD) -m elf64_sparc
+endif
+endif
+
 CPPFLAGS = $(PCDEBUG) -D__KERNEL__ -DMODULE -I../include \
 	   -I$(LINUX)/include -I$(LINUX)
 COFLAGS = -kv
--- pcmcia-cs-3.0.5/modules/rsrc_mgr.c.jj	Thu Aug 20 12:46:43 1998
+++ pcmcia-cs-3.0.5/modules/rsrc_mgr.c	Thu Oct 15 13:15:58 1998
@@ -464,7 +464,7 @@ void validate_mem(int (*is_valid)(u_long
     static int done = 0;
     int pass;
     
-    if (!probe_mem || done++)
+    if (done++)
 	return;
     for (pass = 0; pass < 2; pass++) {
 	for (m = mem_db.next; m != &mem_db; m = m->next)
--- pcmcia-cs-3.0.5/modules/i82365.c.jj	Thu Aug 20 12:46:43 1998
+++ pcmcia-cs-3.0.5/modules/i82365.c	Thu Oct 15 13:36:40 1998
@@ -984,7 +984,9 @@ static void cb_get_state(u_short s)
     }
 #endif
 #endif
+#ifndef __sparc__
     if (t->cap.pci_irq >= NR_IRQS) t->cap.pci_irq = 0;
+#endif
 }
 
 static void cb_set_state(u_short s)
--- pcmcia-cs-3.0.5/clients/Makefile.jj	Sat Aug 15 12:31:57 1998
+++ pcmcia-cs-3.0.5/clients/Makefile	Thu Oct 15 13:39:51 1998
@@ -16,6 +16,19 @@ ifeq ($(ARCH),ppc)
 CC := $(CC) -fno-builtin -msoft-float
 endif
 
+ifeq ($(ARCH),sparc64)
+IS_EGCS := $(shell if $(KERN_CC) --version 2>&1 | grep 'egcs' > /dev/null; then echo y; else echo n; fi)
+NEW_GAS := $(shell if $(KERN_LD) --version 2>&1 | grep 'elf64_sparc' > /dev/null; then echo y; else echo n; fi)
+ifneq ($(IS_EGCS),y)
+CC := $(KERN_CC) -mno-fpu -mtune=ultrasparc -mmedlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare
+else
+CC := $(KERN_CC) -m64 -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare
+endif
+ifeq ($(NEW_GAS),y)
+LD := $(KERN_LD) -m elf64_sparc
+endif
+endif
+
 CPPFLAGS = $(PCDEBUG) -D__KERNEL__ -DMODULE -I../include \
 	   -I$(LINUX)/include -I$(LINUX)
 COFLAGS = -kv
--- pcmcia-cs-3.0.5/Configure.jj	Fri Aug 21 00:59:17 1998
+++ pcmcia-cs-3.0.5/Configure	Thu Oct 15 13:19:40 1998
@@ -181,9 +181,15 @@ echo ""
 
 ask_str "Alternate target install directory" PREFIX
 
+if [ `uname -m` = "sparc64" ]; then
+ask_str "C compiler for userland utilities" CC
+ask_str "C compiler for kernel modules" KERN_CC
+ask_str "Linker name for userland utilities" LD
+ask_str "Linker name for kernel modules" KERN_LD
+else
 ask_str "C compiler name" CC
-
 ask_str "Linker name" LD
+fi
 
 ask_str "Compiler flags for debugging" PCDEBUG
 
@@ -375,7 +381,7 @@ fi
 
 ARCH=`uname -m`
 echo "ARCH=$ARCH" >> $CONFIG_MK
-if [ $ARCH = "ppc" ] ; then CONFIG_ISA=n ; else CONFIG_ISA=y ; fi
+if [ $ARCH = "ppc" -o $ARCH = "sparc64" ] ; then CONFIG_ISA=n ; else CONFIG_ISA=y ; fi
 write_bool CONFIG_ISA
 
 if [ $src != "1" -a "$CONFIG_MODVERSIONS" = "y" ] ; then


Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.125 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
