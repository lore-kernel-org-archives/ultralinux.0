From: David Miller <davem@twiddle.net>
Date: Sun, 18 Apr 1999 22:26:48 +0000
Subject: Re: ide-scsi on sparc64...
Message-Id: <marc-linux-ultrasparc-92447455028631@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92447134026461@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92447134026461@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Sun, 18 Apr 1999 18:20:47 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   Oh.  Duh.  I guess that is pretty obvious.  Why not the second
   "unsigned int flags" as well though?

Thanks for catching this, yes that one needs to be fixed up too.

--- ide-scsi.c.~2~	Sun Apr 18 14:37:07 1999
+++ ide-scsi.c	Sun Apr 18 15:23:37 1999
@@ -92,7 +92,7 @@
 typedef struct {
 	ide_drive_t *drive;
 	idescsi_pc_t *pc;			/* Current packet command */
-	unsigned int flags;			/* Status/Action flags */
+	unsigned long flags;			/* Status/Action flags */
 	unsigned long transform;		/* SCSI cmd translation layer */
 	unsigned long log;			/* log flags */
 } idescsi_scsi_t;
