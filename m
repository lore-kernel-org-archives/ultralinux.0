From: "David S. Miller" <davem@redhat.com>
Date: Mon, 09 Aug 1999 13:24:38 +0000
Subject: FIXED (was Re: Problems with NEW PATCH: ncr/sym drivers and bridges)
Message-Id: <marc-linux-ultrasparc-93420530614874@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


All of this PCI write posting mumbo turned out to have nothing at all
to do with the UltraSparc crashes on AXi systems with NCR scsi
controllers, absolutely nothing.

I have fixed the bug, the issue is that something about some component
of these AXi systems (be it the CPU fabs, the memory SIMMS being used,
whatever) is causing correctable ECC errors at the CPU (note the word
correctable).

Turns out our trap handler for this condition is as good as
unimplemented (ie. it's wrong) and this is what led to the resets in
the end.  The following is the workaround which will be in Linux
2.2.11

I'm going to run some more tests/logging to see if I can figure out
what the precise source of these ECC errors are, perhaps bad SIMMS,
overheating CPU (yes, I know the temperature sensors in this box would
show this), who knows.

At any rate, with the fix below I can no longer reproduce problems
on Ultra/AXi using APB revision 1.3 + NCR scsi Ultra/AXi.

[ I am going to gloat for a moment, and note to everyone involved in
  this thread how at the beginning I warned everyone not to jump to
  any particular conclusion about the cause of this bug... Instead
  of heeding my words, about a week of in-depth discussion about PCI
  write posting rules ensued, and this did nothing to fix the bug.

  It did nothing because everyone assumed from the beginning that
  the bug had something to do with some PCI non-compliance of Sun's
  bridges or whatever, so everyone wanted to point fingers, and work
  on a fix/workaround before we were sure of what the problem was in
  the first place!  8-) ]

diff -u --recursive --new-file --exclude=CVS --exclude=.cvsignore ../vanilla/AC/linux/arch/sparc64/kernel/head.S linux/arch/sparc64/kernel/head.S
--- ../vanilla/AC/linux/arch/sparc64/kernel/head.S	Thu Apr 22 19:24:51 1999
+++ linux/arch/sparc64/kernel/head.S	Mon Aug  9 06:01:22 1999
@@ -1,4 +1,4 @@
-/* $Id: head.S,v 1.60 1999/04/12 08:08:21 davem Exp $
+/* $Id: head.S,v 1.60.2.1 1999/08/09 13:00:25 davem Exp $
  * head.S: Initial boot code for the Sparc64 port of Linux.
  *
  * Copyright (C) 1996,1997 David S. Miller (davem@caip.rutgers.edu)
@@ -75,6 +75,16 @@
 	 * PROM entry point is on %o4
 	 */
 sparc64_boot:
+#if 1
+	/* XXX Disable reception of correctable memory errors until
+	 * XXX we code up the proper handler... -DaveM
+	 */
+	ldxa	[%g0] ASI_ESTATE_ERROR_EN, %g1
+	andn	%g1, 0x1, %g1
+	stxa	%g1, [%g0] ASI_ESTATE_ERROR_EN
+	membar	#Sync
+#endif
+
 	/* Typically PROM has already enabled both MMU's and both on-chip
 	 * caches, but we do it here anyway just to be paranoid.
 	 */
diff -u --recursive --new-file --exclude=CVS --exclude=.cvsignore ../vanilla/AC/linux/arch/sparc64/kernel/trampoline.S linux/arch/sparc64/kernel/trampoline.S
--- ../vanilla/AC/linux/arch/sparc64/kernel/trampoline.S	Wed Mar 10 16:53:37 1999
+++ linux/arch/sparc64/kernel/trampoline.S	Mon Aug  9 06:01:25 1999
@@ -1,4 +1,4 @@
-/* $Id: trampoline.S,v 1.8 1998/12/09 21:01:15 davem Exp $
+/* $Id: trampoline.S,v 1.8.2.1 1999/08/09 13:00:27 davem Exp $
  * trampoline.S: Jump start slave processors on sparc64.
  *
  * Copyright (C) 1997 David S. Miller (davem@caip.rutgers.edu)
@@ -23,6 +23,15 @@
 	.globl		sparc64_cpu_startup, sparc64_cpu_startup_end
 sparc64_cpu_startup:
 	flushw
+#if 1
+	/* XXX Disable reception of correctable memory errors until
+	 * XXX we code up the proper handler... -DaveM
+	 */
+	ldxa	[%g0] ASI_ESTATE_ERROR_EN, %g1
+	andn	%g1, 0x1, %g1
+	stxa	%g1, [%g0] ASI_ESTATE_ERROR_EN
+	membar	#Sync
+#endif
 	mov	(LSU_CONTROL_IC | LSU_CONTROL_DC | LSU_CONTROL_IM | LSU_CONTROL_DM), %g1
 	stxa	%g1, [%g0] ASI_LSU_CONTROL
 	membar	#Sync
