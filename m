From: David Miller <davem@twiddle.net>
Date: Sun, 18 Apr 1999 21:40:16 +0000
Subject: Re: ide-scsi on sparc64...
Message-Id: <marc-linux-ultrasparc-92447167026602@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92447134026461@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92447134026461@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


--- drivers/scsi/ide-scsi.c.~1~	Mon Feb 22 11:36:13 1999
+++ drivers/scsi/ide-scsi.c	Sun Apr 18 14:37:07 1999
@@ -67,7 +67,7 @@
 	int b_count;				/* Bytes transferred from current entry */
 	Scsi_Cmnd *scsi_cmd;			/* SCSI command */
 	void (*done)(Scsi_Cmnd *);		/* Scsi completion routine */
-	unsigned int flags;			/* Status/Action flags */
+	unsigned long flags;			/* Status/Action flags */
 	unsigned long timeout;			/* Command timeout */
 } idescsi_pc_t;
 
@@ -93,8 +93,8 @@
 	ide_drive_t *drive;
 	idescsi_pc_t *pc;			/* Current packet command */
 	unsigned int flags;			/* Status/Action flags */
-	int transform;				/* SCSI cmd translation layer */
-	int log;				/* log flags */
+	unsigned long transform;		/* SCSI cmd translation layer */
+	unsigned long log;			/* log flags */
 } idescsi_scsi_t;
 
 /*
