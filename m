From: Grant Beattie <Grant.Beattie@fulcrum.com.au>
Date: Thu, 14 May 1998 07:39:50 +0000
Subject: cdrom drive causing hangs..
Message-Id: <marc-linux-ultrasparc-90222356531032@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

I just connected a Sun 1x cdrom drive to my classic, but when I boot,
the kernel hangs at this point:

esp0: IRQ 36 SCSI ID 7  Clock 40 MHz CCF=8 Time-Out 167 NCR53C9XF(espfast) detected
esp0: FAST chip is fas100a (family=0, version=2)
ESP: Total of 1 ESP hosts found, 1 actually in use.
scsi0 : Sparc ESP100A-FAST
scsi : 1 host.
  Vendor: SEAGATE   Model: ST1480   SUN0424  Rev: 8628
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sda at scsi0, channel 0, id 3, lun 0
  Vendor: SONY      Model: CD-ROM CDU-8012   Rev: 3.1e
  Type:   CD-ROM                             ANSI SCSI revision: 02
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
esp0: disconnect, resetting bus
esp0: resetting bus...
esp0: SCSI bus reset interrupt
esp0: SCSI bus reset interrupt

(the resetting etc continues until I halt the machine)..

Is this a known problem?

grant.
