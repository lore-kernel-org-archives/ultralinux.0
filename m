From: Peter Jones <pjones@redhat.com>
Date: Tue, 16 Mar 1999 09:05:40 +0000
Subject: SCSI stuff...
Message-Id: <marc-linux-ultrasparc-92157751902398@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

To get SCSI to compile on sparc64 as a module appears to need this patch:

--- include/asm-sparc64/softirq.old	Tue Mar 16 03:52:55 1999
+++ include/asm-sparc64/softirq.h	Tue Mar 16 03:51:09 1999
@@ -44,7 +44,7 @@
 extern inline void remove_bh(int nr)
 {
 	bh_mask &= ~(1 << nr);
-	membar("StoreStore");
+	membar("#StoreStore");
 	bh_base[nr] = NULL;
 }
 
--- drivers/scsi/scsi.old	Tue Mar 16 03:33:51 1999
+++ drivers/scsi/scsi.c	Tue Mar 16 03:45:32 1999
@@ -3297,7 +3296,7 @@
 
     /* One bit per sector to indicate free/busy */
     size = (dma_sectors / SECTORS_PER_PAGE)*sizeof(FreeSectorBitmap);
-    dma_malloc_freelist = (unsigned char *) scsi_init_malloc(size, GFP_ATOMIC);
+    dma_malloc_freelist = (FreeSectorBitmap *) scsi_init_malloc(size, GFP_ATOMIC);
     memset(dma_malloc_freelist, 0, size);
 
     /* One pointer per page for the page list */
 
 -- Peter, staying up far too late as usual.

Computers have already beaten communists at chess.  The next thing you
know, they'll be beating humans.
		-- Dale
