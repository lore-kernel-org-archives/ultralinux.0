From: "David S. Miller" <davem@redhat.com>
Date: Wed, 06 Oct 1999 19:20:53 +0000
Subject: Re: SCSI strangeness on Ultra2
Message-Id: <marc-linux-ultrasparc-93924129109869@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93923506202161@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93923506202161@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
   Date: Wed, 6 Oct 1999 15:04:41 -0400 (EDT)

   The renegotiation information that appeared in dmesg was present at
   boot time and was never repeated.  The problem I had was that since
   I was trying to copy about 40 MBs to the ZIP drive at once it froze
   almost everything for minutes at a time, then would release it,
   then would freeze again, then would release it...you get the idea.

The reset policy when a device locks up the SCSI bus is to
turn off all "features" to that device, which includes synchronous
data transfers and disconnect.  The lack of disconnect is almost
surely what is causing the problem, when a read/write is issued
to the drive, that SCSI bus is effectively unusable by any other
SCSI device on it until the ZIP drive completes the read/write
request.

Ho hum... please give this kernel patch a try, it will allow
disconnects to removable disk media and avoid the negotations, which
should solve the bus reset and the freeze up problems for you:

--- drivers/scsi/esp.c.~1~	Wed Sep 22 10:31:15 1999
+++ drivers/scsi/esp.c	Wed Oct  6 12:17:18 1999
@@ -1520,7 +1520,7 @@
 		if((idprom->id_machtype = (SM_SUN4C | SM_4C_SS1)) ||
 		   (idprom->id_machtype = (SM_SUN4C | SM_4C_SS1PLUS))) {
 			/* But we are nice and allow tapes to disconnect. */
-			if(SDptr->type = TYPE_TAPE)
+			if(SDptr->type = TYPE_TAPE || SDptr->removable)
 				SDptr->disconnect = 1;
 			else
 				SDptr->disconnect = 0;
@@ -1538,7 +1538,8 @@
 		 */
 		if(esp->erev = fashme && !SDptr->wide) {
 			if(!SDptr->borken &&
-			   SDptr->type != TYPE_ROM) {
+			   SDptr->type != TYPE_ROM &&
+			   SDptr->removable = 0) {
 				build_wide_nego_msg(esp, 16);
 				SDptr->wide = 1;
 				esp->wnip = 1;
@@ -1556,6 +1557,11 @@
 					 "CDROM.\n", esp->esp_id));
 				cdrom_hwbug_wkaround = 1;
 				build_sync_nego_msg(esp, 0, 0);
+			} else if (SDptr->removable != 0) {
+				ESPMISC(("esp%d: Not negotiating sync/wide but "
+					 "allowing disconnect for removable media.\n",
+					 esp->esp_id));
+				build_sync_nego_msg(esp, 0, 0);
 			} else {
 				build_sync_nego_msg(esp, esp->sync_defp, 15);
 			}
@@ -1589,7 +1595,9 @@
 		 *           Therefore _no_ disconnects for SCSI1 targets
 		 *           thank you very much. ;-)
 		 */
-		if(((SDptr->scsi_level < 3) && (SDptr->type != TYPE_TAPE)) ||
+		if(((SDptr->scsi_level < 3) &&
+		    (SDptr->type != TYPE_TAPE) &&
+		    SDptr->removable = 0) ||
 		   cdrom_hwbug_wkaround || SDptr->borken) {
 			ESPMISC((KERN_INFO "esp%d: Disabling DISCONNECT for target %d "
 				 "lun %d\n", esp->esp_id, SCptr->target, SCptr->lun));
