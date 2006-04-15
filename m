From: Jean-Luc =?iso-8859-1?Q?L=E9ger?=
Date: Sat, 15 Apr 2006 22:52:44 +0000
Subject: [2.6 patch] fix dependencies of HUGETLB_PAGE_SIZE_64K
Message-Id: <20060415225244.GG47644@dspnet.fr.eu.org>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org

This patch fixes dependencies of HUGETLB_PAGE_SIZE_64K

Signed-off-by: Jean-Luc L=E9ger <jean-luc.leger@dspnet.fr.eu.org>

Index: linux-2.6.17-rc1/arch/sparc64/Kconfig
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D--- linux-2.6.17-rc1/arch/sparc64/Kconfig.old   200=
6-04-15 21:57:30.000000000 +0200
+++ linux-2.6.17-rc1/arch/sparc64/Kconfig       2006-04-15 21:58:38.0000000=
00 +0200
@@ -187,7 +187,7 @@
 	bool "512K"
=20
 config HUGETLB_PAGE_SIZE_64K
-	depends on !SPARC64_PAGE_SIZE_4MB && !SPARC64_PAGE_SIZE_512KB && !SPARC64=
_PAGE_SIZE_64K
+	depends on !SPARC64_PAGE_SIZE_4MB && !SPARC64_PAGE_SIZE_512KB && !SPARC64=
_PAGE_SIZE_64KB
 	bool "64K"
=20
 endchoice

