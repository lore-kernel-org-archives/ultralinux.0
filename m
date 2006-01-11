From: Adrian Bunk <bunk@stusta.de>
Date: Wed, 11 Jan 2006 23:46:41 +0000
Subject: [2.6 patch] arch/sparc64/Kconfig: fix HUGETLB_PAGE_SIZE_64K dependencies
Message-Id: <20060111234640.GJ29663@stusta.de>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net
Cc: ultralinux@vger.kernel.org, linux-kernel@vger.kernel.org, Jean-Luc Leger <reiga@dspnet.fr.eu.org>

This patch fixes a typo in the dependencies of HUGETLB_PAGE_SIZE_64K.

It might be more logical to rename the HUGETLB_PAGE_SIZE_*K dependencies 
to HUGETLB_PAGE_SIZE_*KB, but let's fix this bug first.

This bug was reported by Jean-Luc Leger <reiga@dspnet.fr.eu.org>.


Signed-off-by: Adrian Bunk <bunk@stusta.de>

--- linux-2.6.15-mm3-full/arch/sparc64/Kconfig.old	2006-01-11 23:44:42.000000000 +0100
+++ linux-2.6.15-mm3-full/arch/sparc64/Kconfig	2006-01-11 23:44:58.000000000 +0100
@@ -179,7 +179,7 @@
 	bool "512K"
 
 config HUGETLB_PAGE_SIZE_64K
-	depends on !SPARC64_PAGE_SIZE_4MB && !SPARC64_PAGE_SIZE_512K
+	depends on !SPARC64_PAGE_SIZE_4MB && !SPARC64_PAGE_SIZE_512KB
 	bool "64K"
 
 endchoice
