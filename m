From: Lightweight patch manager <patch@luckynet.dynu.com>
Date: Sun, 09 Jun 2002 15:19:53 +0000
Subject: [PATCH][2.5] list_move for sparc64 pci (1 occ)
Message-Id: <marc-linux-ultrasparc-102363607431535@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This makes the pci driver for sparc64 use the new list_move macro

--- linus-2.5/arch/sparc64/kernel/pci.c	Sun Jun  9 04:13:30 2002
+++ thunder-2.5/arch/sparc64/kernel/pci.c	Sun Jun  9 05:22:07 2002
@@ -168,10 +168,8 @@
 		struct pci_dev *pdev = pci_dev_g(walk);
 		struct list_head *walk_next = walk->next;
 
-		if (pdev->irq && (__irq_ino(pdev->irq) & 0x20)) {
-			list_del(walk);
-			list_add(walk, pci_onboard);
-		}
+		if (pdev->irq && (__irq_ino(pdev->irq) & 0x20))
+			list_move(walk, pci_onboard);
 
 		walk = walk_next;
 	}

-- 
Lightweight patch manager using pine. If you have any objections, tell me.

