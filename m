From: David Miller <davem@davemloft.net>
Date: Fri, 29 Dec 2006 00:59:37 +0000
Subject: Re: of_ioremap / of_iounmap imbalance
Message-Id: <20061228.165937.104644575.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb0612121442m25faf623qf28d1d564dbf5b89@mail.gmail.com>
In-Reply-To: <ec7cefb0612121442m25faf623qf28d1d564dbf5b89@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: "Eric Brower" <ebrower@gmail.com>
Date: Tue, 12 Dec 2006 14:42:13 -0800

> There's an imbalance in .../arch/sparc64/kernel/of_device.c whereby
> of_ioremap() will intelligently request_region() or
> request_mem_region() as appropriate for the address space, but
> of_iounmap() will always unmap the region as an IO address.  This,
> naturally, causes a fair bit of badness.

Thanks for spotting this Eric.

We'll certainly have to pass in the resource to fix this,
I'll commit the following to cure this.

commit 2ad00319758f098ff7e1c626531bcbb5fd223155
Author: David S. Miller <davem@sunset.davemloft.net>
Date:   Thu Dec 28 16:58:53 2006 -0800

    [SPARC64]: Fix of_iounmap() region release.
    
    We need to pass in the resource otherwise we cannot
    release the region properly.  We must know whether it is
    an I/O or MEM resource.
    
    Spotted by Eric Brower.
    
    Signed-off-by: David S. Miller <davem@davemloft.net>

diff --git a/arch/sparc/kernel/ioport.c b/arch/sparc/kernel/ioport.c
index 00a3976..987ec67 100644
--- a/arch/sparc/kernel/ioport.c
+++ b/arch/sparc/kernel/ioport.c
@@ -153,7 +153,7 @@ void __iomem *of_ioremap(struct resource *res, unsigned long offset,
 }
 EXPORT_SYMBOL(of_ioremap);
 
-void of_iounmap(void __iomem *base, unsigned long size)
+void of_iounmap(struct resource *res, void __iomem *base, unsigned long size)
 {
 	iounmap(base);
 }
diff --git a/arch/sparc64/kernel/of_device.c b/arch/sparc64/kernel/of_device.c
index cec0ece..b0f3e00 100644
--- a/arch/sparc64/kernel/of_device.c
+++ b/arch/sparc64/kernel/of_device.c
@@ -144,9 +144,12 @@ void __iomem *of_ioremap(struct resource *res, unsigned long offset, unsigned lo
 }
 EXPORT_SYMBOL(of_ioremap);
 
-void of_iounmap(void __iomem *base, unsigned long size)
+void of_iounmap(struct resource *res, void __iomem *base, unsigned long size)
 {
-	release_region((unsigned long) base, size);
+	if (res->flags & IORESOURCE_MEM)
+		release_mem_region((unsigned long) base, size);
+	else
+		release_region((unsigned long) base, size);
 }
 EXPORT_SYMBOL(of_iounmap);
 
diff --git a/drivers/input/serio/i8042-sparcio.h b/drivers/input/serio/i8042-sparcio.h
index 54adba2..d9ca558 100644
--- a/drivers/input/serio/i8042-sparcio.h
+++ b/drivers/input/serio/i8042-sparcio.h
@@ -16,6 +16,7 @@ static int i8042_aux_irq = -1;
 #define I8042_MUX_PHYS_DESC "sparcps2/serio%d"
 
 static void __iomem *kbd_iobase;
+static struct resource *kbd_res;
 
 #define I8042_COMMAND_REG	(kbd_iobase + 0x64UL)
 #define I8042_DATA_REG		(kbd_iobase + 0x60UL)
@@ -60,6 +61,7 @@ static int __devinit sparc_i8042_probe(struct of_device *op, const struct of_dev
 			i8042_kbd_irq = irq;
 			kbd_iobase = of_ioremap(&kbd->resource[0],
 						0, 8, "kbd");
+			kbd_res = &kbd->resource[0];
 		} else if (!strcmp(dp->name, OBP_PS2MS_NAME1) ||
 			   !strcmp(dp->name, OBP_PS2MS_NAME2)) {
 			struct of_device *ms = of_find_device_by_node(dp);
@@ -77,7 +79,7 @@ static int __devinit sparc_i8042_probe(struct of_device *op, const struct of_dev
 
 static int __devexit sparc_i8042_remove(struct of_device *op)
 {
-	of_iounmap(kbd_iobase, 8);
+	of_iounmap(kbd_res, kbd_iobase, 8);
 
 	return 0;
 }
@@ -119,7 +121,7 @@ static int __init i8042_platform_init(void)
 		if (i8042_kbd_irq = -1 ||
 		    i8042_aux_irq = -1) {
 			if (kbd_iobase) {
-				of_iounmap(kbd_iobase, 8);
+				of_iounmap(kbd_res, kbd_iobase, 8);
 				kbd_iobase = (void __iomem *) NULL;
 			}
 			return -ENODEV;
diff --git a/drivers/serial/sunsab.c b/drivers/serial/sunsab.c
index 493d5bb..145d623 100644
--- a/drivers/serial/sunsab.c
+++ b/drivers/serial/sunsab.c
@@ -1037,7 +1037,8 @@ static int __devinit sunsab_init_one(struct uart_sunsab_port *up,
 		err = request_irq(up->port.irq, sunsab_interrupt,
 				  IRQF_SHARED, "sab", up);
 		if (err) {
-			of_iounmap(up->port.membase,
+			of_iounmap(&op->resource[0],
+				   up->port.membase,
 				   sizeof(union sab82532_async_regs));
 			return err;
 		}
@@ -1064,7 +1065,8 @@ static int __devinit sab_probe(struct of_device *op, const struct of_device_id *
 			      sizeof(union sab82532_async_regs),
 			      (inst * 2) + 1);
 	if (err) {
-		of_iounmap(up[0].port.membase,
+		of_iounmap(&op->resource[0],
+			   up[0].port.membase,
 			   sizeof(union sab82532_async_regs));
 		free_irq(up[0].port.irq, &up[0]);
 		return err;
@@ -1082,10 +1084,13 @@ static int __devinit sab_probe(struct of_device *op, const struct of_device_id *
 
 static void __devexit sab_remove_one(struct uart_sunsab_port *up)
 {
+	struct of_device *op = to_of_device(up->port.dev);
+
 	uart_remove_one_port(&sunsab_reg, &up->port);
 	if (!(up->port.line & 1))
 		free_irq(up->port.irq, up);
-	of_iounmap(up->port.membase,
+	of_iounmap(&op->resource[0],
+		   up->port.membase,
 		   sizeof(union sab82532_async_regs));
 }
 
diff --git a/drivers/serial/sunsu.c b/drivers/serial/sunsu.c
index 564592b..3ec3df2 100644
--- a/drivers/serial/sunsu.c
+++ b/drivers/serial/sunsu.c
@@ -1480,13 +1480,13 @@ static int __devinit su_probe(struct of_device *op, const struct of_device_id *m
 	return 0;
 
 out_unmap:
-	of_iounmap(up->port.membase, up->reg_size);
+	of_iounmap(&op->resource[0], up->port.membase, up->reg_size);
 	return err;
 }
 
-static int __devexit su_remove(struct of_device *dev)
+static int __devexit su_remove(struct of_device *op)
 {
-	struct uart_sunsu_port *up = dev_get_drvdata(&dev->dev);;
+	struct uart_sunsu_port *up = dev_get_drvdata(&op->dev);
 
 	if (up->su_type = SU_PORT_MS ||
 	    up->su_type = SU_PORT_KBD) {
@@ -1499,9 +1499,9 @@ static int __devexit su_remove(struct of_device *dev)
 	}
 
 	if (up->port.membase)
-		of_iounmap(up->port.membase, up->reg_size);
+		of_iounmap(&op->resource[0], up->port.membase, up->reg_size);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/serial/sunzilog.c b/drivers/serial/sunzilog.c
index 75de919..244f796 100644
--- a/drivers/serial/sunzilog.c
+++ b/drivers/serial/sunzilog.c
@@ -1379,13 +1379,15 @@ static int __devinit zs_probe(struct of_device *op, const struct of_device_id *m
 	if (!keyboard_mouse) {
 		err = uart_add_one_port(&sunzilog_reg, &up[0].port);
 		if (err) {
-			of_iounmap(rp, sizeof(struct zilog_layout));
+			of_iounmap(&op->resource[0],
+				   rp, sizeof(struct zilog_layout));
 			return err;
 		}
 		err = uart_add_one_port(&sunzilog_reg, &up[1].port);
 		if (err) {
 			uart_remove_one_port(&sunzilog_reg, &up[0].port);
-			of_iounmap(rp, sizeof(struct zilog_layout));
+			of_iounmap(&op->resource[0],
+				   rp, sizeof(struct zilog_layout));
 			return err;
 		}
 	} else {
@@ -1414,18 +1416,18 @@ static void __devexit zs_remove_one(struct uart_sunzilog_port *up)
 		uart_remove_one_port(&sunzilog_reg, &up->port);
 }
 
-static int __devexit zs_remove(struct of_device *dev)
+static int __devexit zs_remove(struct of_device *op)
 {
-	struct uart_sunzilog_port *up = dev_get_drvdata(&dev->dev);
+	struct uart_sunzilog_port *up = dev_get_drvdata(&op->dev);
 	struct zilog_layout __iomem *regs;
 
 	zs_remove_one(&up[0]);
 	zs_remove_one(&up[1]);
 
 	regs = sunzilog_chip_regs[up[0].port.line / 2];
-	of_iounmap(regs, sizeof(struct zilog_layout));
+	of_iounmap(&op->resource[0], regs, sizeof(struct zilog_layout));
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/bw2.c b/drivers/video/bw2.c
index c66e3d5..9bb6257 100644
--- a/drivers/video/bw2.c
+++ b/drivers/video/bw2.c
@@ -320,7 +320,7 @@ static int __devinit bw2_init_one(struct of_device *op)
 	all->info.fbops = &bw2_ops;
 
 	all->info.screen_base -		sbus_ioremap(&op->resource[0], 0, all->par.fbsize, "bw2 ram");
+		of_ioremap(&op->resource[0], 0, all->par.fbsize, "bw2 ram");
 	all->info.par = &all->par;
 
 	bw2_blank(0, &all->info);
@@ -329,8 +329,10 @@ static int __devinit bw2_init_one(struct of_device *op)
 
 	err= register_framebuffer(&all->info);
 	if (err < 0) {
-		of_iounmap(all->par.regs, sizeof(struct bw2_regs));
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct bw2_regs));
+		of_iounmap(&op->resource[0],
+			   all->info.screen_base, all->par.fbsize);
 		kfree(all);
 		return err;
 	}
@@ -351,18 +353,18 @@ static int __devinit bw2_probe(struct of_device *dev, const struct of_device_id
 	return bw2_init_one(op);
 }
 
-static int __devexit bw2_remove(struct of_device *dev)
+static int __devexit bw2_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 
-	of_iounmap(all->par.regs, sizeof(struct bw2_regs));
-	of_iounmap(all->info.screen_base, all->par.fbsize);
+	of_iounmap(&op->resource[0], all->par.regs, sizeof(struct bw2_regs));
+	of_iounmap(&op->resource[0], all->info.screen_base, all->par.fbsize);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/cg14.c b/drivers/video/cg14.c
index 7f926c6..ec6a51a 100644
--- a/drivers/video/cg14.c
+++ b/drivers/video/cg14.c
@@ -452,16 +452,20 @@ struct all_info {
 	struct cg14_par par;
 };
 
-static void cg14_unmap_regs(struct all_info *all)
+static void cg14_unmap_regs(struct of_device *op, struct all_info *all)
 {
 	if (all->par.regs)
-		of_iounmap(all->par.regs, sizeof(struct cg14_regs));
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct cg14_regs));
 	if (all->par.clut)
-		of_iounmap(all->par.clut, sizeof(struct cg14_clut));
+		of_iounmap(&op->resource[0],
+			   all->par.clut, sizeof(struct cg14_clut));
 	if (all->par.cursor)
-		of_iounmap(all->par.cursor, sizeof(struct cg14_cursor));
+		of_iounmap(&op->resource[0],
+			   all->par.cursor, sizeof(struct cg14_cursor));
 	if (all->info.screen_base)
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[1],
+			   all->info.screen_base, all->par.fbsize);
 }
 
 static int __devinit cg14_init_one(struct of_device *op)
@@ -506,7 +510,7 @@ static int __devinit cg14_init_one(struct of_device *op)
 
 	if (!all->par.regs || !all->par.clut || !all->par.cursor ||
 	    !all->info.screen_base)
-		cg14_unmap_regs(all);
+		cg14_unmap_regs(op, all);
 
 	is_8mb = (((op->resource[1].end - op->resource[1].start) + 1) =
 		  (8 * 1024 * 1024));
@@ -541,7 +545,7 @@ static int __devinit cg14_init_one(struct of_device *op)
 	__cg14_reset(&all->par);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		cg14_unmap_regs(all);
+		cg14_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -552,7 +556,7 @@ static int __devinit cg14_init_one(struct of_device *op)
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
 		fb_dealloc_cmap(&all->info.cmap);
-		cg14_unmap_regs(all);
+		cg14_unmap_regs(op, all);
 		kfree(all);
 		return err;
 	}
@@ -574,18 +578,18 @@ static int __devinit cg14_probe(struct of_device *dev, const struct of_device_id
 	return cg14_init_one(op);
 }
 
-static int __devexit cg14_remove(struct of_device *dev)
+static int __devexit cg14_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	cg14_unmap_regs(all);
+	cg14_unmap_regs(op, all);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/cg3.c b/drivers/video/cg3.c
index 9c8c753..ada6f7e 100644
--- a/drivers/video/cg3.c
+++ b/drivers/video/cg3.c
@@ -403,8 +403,10 @@ static int __devinit cg3_init_one(struct of_device *op)
 		cg3_do_default_mode(&all->par);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		of_iounmap(all->par.regs, sizeof(struct cg3_regs));
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct cg3_regs));
+		of_iounmap(&op->resource[0],
+			   all->info.screen_base, all->par.fbsize);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -415,8 +417,10 @@ static int __devinit cg3_init_one(struct of_device *op)
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
 		fb_dealloc_cmap(&all->info.cmap);
-		of_iounmap(all->par.regs, sizeof(struct cg3_regs));
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct cg3_regs));
+		of_iounmap(&op->resource[0],
+			   all->info.screen_base, all->par.fbsize);
 		kfree(all);
 		return err;
 	}
@@ -436,19 +440,19 @@ static int __devinit cg3_probe(struct of_device *dev, const struct of_device_id
 	return cg3_init_one(op);
 }
 
-static int __devexit cg3_remove(struct of_device *dev)
+static int __devexit cg3_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	of_iounmap(all->par.regs, sizeof(struct cg3_regs));
-	of_iounmap(all->info.screen_base, all->par.fbsize);
+	of_iounmap(&op->resource[0], all->par.regs, sizeof(struct cg3_regs));
+	of_iounmap(&op->resource[0], all->info.screen_base, all->par.fbsize);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/cg6.c b/drivers/video/cg6.c
index 64146be..4dad23a 100644
--- a/drivers/video/cg6.c
+++ b/drivers/video/cg6.c
@@ -658,21 +658,26 @@ struct all_info {
 	struct cg6_par par;
 };
 
-static void cg6_unmap_regs(struct all_info *all)
+static void cg6_unmap_regs(struct of_device *op, struct all_info *all)
 {
 	if (all->par.fbc)
-		of_iounmap(all->par.fbc, 4096);
+		of_iounmap(&op->resource[0], all->par.fbc, 4096);
 	if (all->par.tec)
-		of_iounmap(all->par.tec, sizeof(struct cg6_tec));
+		of_iounmap(&op->resource[0],
+			   all->par.tec, sizeof(struct cg6_tec));
 	if (all->par.thc)
-		of_iounmap(all->par.thc, sizeof(struct cg6_thc));
+		of_iounmap(&op->resource[0],
+			   all->par.thc, sizeof(struct cg6_thc));
 	if (all->par.bt)
-		of_iounmap(all->par.bt, sizeof(struct bt_regs));
+		of_iounmap(&op->resource[0],
+			   all->par.bt, sizeof(struct bt_regs));
 	if (all->par.fhc)
-		of_iounmap(all->par.fhc, sizeof(u32));
+		of_iounmap(&op->resource[0],
+			   all->par.fhc, sizeof(u32));
 
 	if (all->info.screen_base)
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->info.screen_base, all->par.fbsize);
 }
 
 static int __devinit cg6_init_one(struct of_device *op)
@@ -720,7 +725,7 @@ static int __devinit cg6_init_one(struct of_device *op)
 					    all->par.fbsize, "cgsix ram");
 	if (!all->par.fbc || !all->par.tec || !all->par.thc ||
 	    !all->par.bt || !all->par.fhc || !all->info.screen_base) {
-		cg6_unmap_regs(all);
+		cg6_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -734,7 +739,7 @@ static int __devinit cg6_init_one(struct of_device *op)
 	cg6_blank(0, &all->info);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		cg6_unmap_regs(all);
+		cg6_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -744,7 +749,7 @@ static int __devinit cg6_init_one(struct of_device *op)
 
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
-		cg6_unmap_regs(all);
+		cg6_unmap_regs(op, all);
 		fb_dealloc_cmap(&all->info.cmap);
 		kfree(all);
 		return err;
@@ -767,18 +772,18 @@ static int __devinit cg6_probe(struct of_device *dev, const struct of_device_id
 	return cg6_init_one(op);
 }
 
-static int __devexit cg6_remove(struct of_device *dev)
+static int __devexit cg6_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	cg6_unmap_regs(all);
+	cg6_unmap_regs(op, all);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/ffb.c b/drivers/video/ffb.c
index 949141b..15854ae 100644
--- a/drivers/video/ffb.c
+++ b/drivers/video/ffb.c
@@ -910,7 +910,8 @@ static int ffb_init_one(struct of_device *op)
 	all->par.dac = of_ioremap(&op->resource[1], 0,
 				  sizeof(struct ffb_dac), "ffb dac");
 	if (!all->par.dac) {
-		of_iounmap(all->par.fbc, sizeof(struct ffb_fbc));
+		of_iounmap(&op->resource[2],
+			   all->par.fbc, sizeof(struct ffb_fbc));
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -968,8 +969,10 @@ static int ffb_init_one(struct of_device *op)
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
 		printk(KERN_ERR "ffb: Could not allocate color map.\n");
-		of_iounmap(all->par.fbc, sizeof(struct ffb_fbc));
-		of_iounmap(all->par.dac, sizeof(struct ffb_dac));
+		of_iounmap(&op->resource[2],
+			   all->par.fbc, sizeof(struct ffb_fbc));
+		of_iounmap(&op->resource[1],
+			   all->par.dac, sizeof(struct ffb_dac));
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -980,8 +983,10 @@ static int ffb_init_one(struct of_device *op)
 	if (err < 0) {
 		printk(KERN_ERR "ffb: Could not register framebuffer.\n");
 		fb_dealloc_cmap(&all->info.cmap);
-		of_iounmap(all->par.fbc, sizeof(struct ffb_fbc));
-		of_iounmap(all->par.dac, sizeof(struct ffb_dac));
+		of_iounmap(&op->resource[2],
+			   all->par.fbc, sizeof(struct ffb_fbc));
+		of_iounmap(&op->resource[1],
+			   all->par.dac, sizeof(struct ffb_dac));
 		kfree(all);
 		return err;
 	}
@@ -1003,19 +1008,19 @@ static int __devinit ffb_probe(struct of_device *dev, const struct of_device_id
 	return ffb_init_one(op);
 }
 
-static int __devexit ffb_remove(struct of_device *dev)
+static int __devexit ffb_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	of_iounmap(all->par.fbc, sizeof(struct ffb_fbc));
-	of_iounmap(all->par.dac, sizeof(struct ffb_dac));
+	of_iounmap(&op->resource[2], all->par.fbc, sizeof(struct ffb_fbc));
+	of_iounmap(&op->resource[1], all->par.dac, sizeof(struct ffb_dac));
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/leo.c b/drivers/video/leo.c
index f3a2433..a038aa5 100644
--- a/drivers/video/leo.c
+++ b/drivers/video/leo.c
@@ -530,20 +530,21 @@ struct all_info {
 	struct leo_par par;
 };
 
-static void leo_unmap_regs(struct all_info *all)
+static void leo_unmap_regs(struct of_device *op, struct all_info *all)
 {
 	if (all->par.lc_ss0_usr)
-		of_iounmap(all->par.lc_ss0_usr, 0x1000);
+		of_iounmap(&op->resource[0], all->par.lc_ss0_usr, 0x1000);
 	if (all->par.ld_ss0)
-		of_iounmap(all->par.ld_ss0, 0x1000);
+		of_iounmap(&op->resource[0], all->par.ld_ss0, 0x1000);
 	if (all->par.ld_ss1)
-		of_iounmap(all->par.ld_ss1, 0x1000);
+		of_iounmap(&op->resource[0], all->par.ld_ss1, 0x1000);
 	if (all->par.lx_krn)
-		of_iounmap(all->par.lx_krn, 0x1000);
+		of_iounmap(&op->resource[0], all->par.lx_krn, 0x1000);
 	if (all->par.cursor)
-		of_iounmap(all->par.cursor, sizeof(struct leo_cursor));
+		of_iounmap(&op->resource[0],
+			   all->par.cursor, sizeof(struct leo_cursor));
 	if (all->info.screen_base)
-		of_iounmap(all->info.screen_base, 0x800000);
+		of_iounmap(&op->resource[0], all->info.screen_base, 0x800000);
 }
 
 static int __devinit leo_init_one(struct of_device *op)
@@ -592,7 +593,7 @@ static int __devinit leo_init_one(struct of_device *op)
 	    !all->par.lx_krn ||
 	    !all->par.cursor ||
 	    !all->info.screen_base) {
-		leo_unmap_regs(all);
+		leo_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -607,7 +608,7 @@ static int __devinit leo_init_one(struct of_device *op)
 	leo_blank(0, &all->info);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		leo_unmap_regs(all);
+		leo_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;;
 	}
@@ -617,7 +618,7 @@ static int __devinit leo_init_one(struct of_device *op)
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
 		fb_dealloc_cmap(&all->info.cmap);
-		leo_unmap_regs(all);
+		leo_unmap_regs(op, all);
 		kfree(all);
 		return err;
 	}
@@ -638,18 +639,18 @@ static int __devinit leo_probe(struct of_device *dev, const struct of_device_id
 	return leo_init_one(op);
 }
 
-static int __devexit leo_remove(struct of_device *dev)
+static int __devexit leo_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	leo_unmap_regs(all);
+	leo_unmap_regs(op, all);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/p9100.c b/drivers/video/p9100.c
index 56ac51d..637b78b 100644
--- a/drivers/video/p9100.c
+++ b/drivers/video/p9100.c
@@ -297,7 +297,8 @@ static int __devinit p9100_init_one(struct of_device *op)
 	all->info.screen_base = of_ioremap(&op->resource[2], 0,
 					   all->par.fbsize, "p9100 ram");
 	if (!all->info.screen_base) {
-		of_iounmap(all->par.regs, sizeof(struct p9100_regs));
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct p9100_regs));
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -306,8 +307,10 @@ static int __devinit p9100_init_one(struct of_device *op)
 	p9100_blank(0, &all->info);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		of_iounmap(all->par.regs, sizeof(struct p9100_regs));
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct p9100_regs));
+		of_iounmap(&op->resource[2],
+			   all->info.screen_base, all->par.fbsize);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -317,8 +320,10 @@ static int __devinit p9100_init_one(struct of_device *op)
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
 		fb_dealloc_cmap(&all->info.cmap);
-		of_iounmap(all->par.regs, sizeof(struct p9100_regs));
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->par.regs, sizeof(struct p9100_regs));
+		of_iounmap(&op->resource[2],
+			   all->info.screen_base, all->par.fbsize);
 		kfree(all);
 		return err;
 	}
@@ -340,19 +345,19 @@ static int __devinit p9100_probe(struct of_device *dev, const struct of_device_i
 	return p9100_init_one(op);
 }
 
-static int __devexit p9100_remove(struct of_device *dev)
+static int __devexit p9100_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	of_iounmap(all->par.regs, sizeof(struct p9100_regs));
-	of_iounmap(all->info.screen_base, all->par.fbsize);
+	of_iounmap(&op->resource[0], all->par.regs, sizeof(struct p9100_regs));
+	of_iounmap(&op->resource[2], all->info.screen_base, all->par.fbsize);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/tcx.c b/drivers/video/tcx.c
index 6990ab1..5a99669 100644
--- a/drivers/video/tcx.c
+++ b/drivers/video/tcx.c
@@ -350,18 +350,23 @@ struct all_info {
 	struct tcx_par par;
 };
 
-static void tcx_unmap_regs(struct all_info *all)
+static void tcx_unmap_regs(struct of_device *op, struct all_info *all)
 {
 	if (all->par.tec)
-		of_iounmap(all->par.tec, sizeof(struct tcx_tec));
+		of_iounmap(&op->resource[7],
+			   all->par.tec, sizeof(struct tcx_tec));
 	if (all->par.thc)
-		of_iounmap(all->par.thc, sizeof(struct tcx_thc));
+		of_iounmap(&op->resource[9],
+			   all->par.thc, sizeof(struct tcx_thc));
 	if (all->par.bt)
-		of_iounmap(all->par.bt, sizeof(struct bt_regs));
+		of_iounmap(&op->resource[8],
+			   all->par.bt, sizeof(struct bt_regs));
 	if (all->par.cplane)
-		of_iounmap(all->par.cplane, all->par.fbsize * sizeof(u32));
+		of_iounmap(&op->resource[4],
+			   all->par.cplane, all->par.fbsize * sizeof(u32));
 	if (all->info.screen_base)
-		of_iounmap(all->info.screen_base, all->par.fbsize);
+		of_iounmap(&op->resource[0],
+			   all->info.screen_base, all->par.fbsize);
 }
 
 static int __devinit tcx_init_one(struct of_device *op)
@@ -398,7 +403,7 @@ static int __devinit tcx_init_one(struct of_device *op)
 					   all->par.fbsize, "tcx ram");
 	if (!all->par.tec || !all->par.thc ||
 	    !all->par.bt || !all->info.screen_base) {
-		tcx_unmap_regs(all);
+		tcx_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -409,7 +414,7 @@ static int __devinit tcx_init_one(struct of_device *op)
 					     all->par.fbsize * sizeof(u32),
 					     "tcx cplane");
 		if (!all->par.cplane) {
-			tcx_unmap_regs(all);
+			tcx_unmap_regs(op, all);
 			kfree(all);
 			return -ENOMEM;
 		}
@@ -461,7 +466,7 @@ static int __devinit tcx_init_one(struct of_device *op)
 	tcx_blank(FB_BLANK_UNBLANK, &all->info);
 
 	if (fb_alloc_cmap(&all->info.cmap, 256, 0)) {
-		tcx_unmap_regs(all);
+		tcx_unmap_regs(op, all);
 		kfree(all);
 		return -ENOMEM;
 	}
@@ -472,7 +477,7 @@ static int __devinit tcx_init_one(struct of_device *op)
 	err = register_framebuffer(&all->info);
 	if (err < 0) {
 		fb_dealloc_cmap(&all->info.cmap);
-		tcx_unmap_regs(all);
+		tcx_unmap_regs(op, all);
 		kfree(all);
 		return err;
 	}
@@ -495,18 +500,18 @@ static int __devinit tcx_probe(struct of_device *dev, const struct of_device_id
 	return tcx_init_one(op);
 }
 
-static int __devexit tcx_remove(struct of_device *dev)
+static int __devexit tcx_remove(struct of_device *op)
 {
-	struct all_info *all = dev_get_drvdata(&dev->dev);
+	struct all_info *all = dev_get_drvdata(&op->dev);
 
 	unregister_framebuffer(&all->info);
 	fb_dealloc_cmap(&all->info.cmap);
 
-	tcx_unmap_regs(all);
+	tcx_unmap_regs(op, all);
 
 	kfree(all);
 
-	dev_set_drvdata(&dev->dev, NULL);
+	dev_set_drvdata(&op->dev, NULL);
 
 	return 0;
 }
diff --git a/include/asm-sparc/of_device.h b/include/asm-sparc/of_device.h
index 80ea31f..7cb00c1 100644
--- a/include/asm-sparc/of_device.h
+++ b/include/asm-sparc/of_device.h
@@ -33,7 +33,7 @@ struct of_device
 #define	to_of_device(d) container_of(d, struct of_device, dev)
 
 extern void __iomem *of_ioremap(struct resource *res, unsigned long offset, unsigned long size, char *name);
-extern void of_iounmap(void __iomem *base, unsigned long size);
+extern void of_iounmap(struct resource *res, void __iomem *base, unsigned long size);
 
 extern struct of_device *of_find_device_by_node(struct device_node *);
 
diff --git a/include/asm-sparc64/of_device.h b/include/asm-sparc64/of_device.h
index a62c7b9..60e9173 100644
--- a/include/asm-sparc64/of_device.h
+++ b/include/asm-sparc64/of_device.h
@@ -34,7 +34,7 @@ struct of_device
 #define	to_of_device(d) container_of(d, struct of_device, dev)
 
 extern void __iomem *of_ioremap(struct resource *res, unsigned long offset, unsigned long size, char *name);
-extern void of_iounmap(void __iomem *base, unsigned long size);
+extern void of_iounmap(struct resource *res, void __iomem *base, unsigned long size);
 
 extern struct of_device *of_find_device_by_node(struct device_node *);
 
