From: Thiemo Seufer <ica2_ts@csv.ica.uni-stuttgart.de>
Date: Fri, 05 Jul 2002 12:33:46 +0000
Subject: [PATCH] Fix zs.c serial callout driver
Message-Id: <marc-linux-ultrasparc-102587243614878@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

[please CC me for replies, I'm not on this list]

Hello,

this should fix the serial callout driver for the non-devfs case.
I haven't tested it because I have no such hardware.


Thiemo


diff -BurpNX /bigdisk/src/dontdiff source-linux-orig/drivers/sbus/char/zs.c source-linux/drivers/sbus/char/zs.c
--- source-linux-orig/drivers/sbus/char/zs.c	Fri Jul  5 08:31:49 2002
+++ source-linux/drivers/sbus/char/zs.c	Fri Jul  5 08:55:05 2002
@@ -2406,7 +2414,11 @@ int __init zs_init(void)
 	 * major number and the subtype code.
 	 */
 	callout_driver = serial_driver;
+#ifdef CONFIG_DEVFS_FS
 	callout_driver.name = "cua/%d";
+#else
+	callout_driver.name = "cua";
+#endif
 	callout_driver.major = TTYAUX_MAJOR;
 	callout_driver.subtype = SERIAL_TYPE_CALLOUT;
 
