From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 22 Jul 2000 18:33:21 +0000
Subject: obsolete sun_serial_con?
Message-Id: <marc-linux-ultrasparc-96435311504873@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


While cleaning up struct consw, I noticed sun_serial_con is never used
(anymore).

--- linux-2.4.0-test5-pre4/arch/sparc64/kernel/setup.c	Tue Jul 18 13:59:17 2000
+++ geert-consw-2.4.0-test5-pre4/arch/sparc64/kernel/setup.c	Sat Jul 22 20:31:35 2000
@@ -444,8 +444,6 @@
 
 static struct pt_regs fake_swapper_regs = { { 0, }, 0, 0, 0, 0 };
 
-extern struct consw sun_serial_con;
-
 void register_prom_callbacks(void)
 {
 	prom_setcallback(prom_callback);

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
