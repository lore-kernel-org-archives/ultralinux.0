From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 24 Nov 1998 06:59:10 +0000
Subject: Re: silo-0.8.3-1.sparc.rpm, modutils-2.1.121-1.sparc.rpm
Message-Id: <marc-linux-ultrasparc-91193624928443@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91188621905979@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91188621905979@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I'm confused by this- does this mean that somebody is doing a fc4/soc/ssa
> driver set or it's been done?

It has been done about a year ago.
fc4 layer only supports SCSI over FC4, soc only supports SOC (and not SOC+
yet, although I started, but have no possibility to test it), pluto is the
driver for SSA. FC-AL is not yet supported, although I'd like to support it
as soon as possible (but I lack FC-AL and SOC+ hw at the moment).

[root@sunsite /root]# cat /proc/scsi/pluto/2
SUN SparcSTORAGE Array 1.0 fw 2.0 serial 000000753B1E 6x5 on soc0 port A
[root@sunsite /root]# cat /proc/scsi/scsi
Attached devices: 
....
Host: scsi2 Channel: 00 Id: 00 Lun: 00
  Vendor: SUN      Model: SSA100           Rev: 1.0 
  Type:   Processor                        ANSI SCSI revision: 02
Host: scsi2 Channel: 01 Id: 00 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 01 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 01 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 01 Id: 03 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 01 Id: 04 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 02 Id: 00 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 02 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 02 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 02 Id: 03 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 02 Id: 04 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 03 Id: 00 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 03 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 03 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 03 Id: 03 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 03 Id: 04 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 04 Id: 00 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 04 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 04 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 04 Id: 03 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 04 Id: 04 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 05 Id: 00 Lun: 00
  Vendor: QUANTUM  Model: VK4550J  SUN4.2G Rev: 8600
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 05 Id: 01 Lun: 00
  Vendor: QUANTUM  Model: VK4550J  SUN4.2G Rev: 8600
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 05 Id: 02 Lun: 00
  Vendor: QUANTUM  Model: VK4550J  SUN4.2G Rev: 8600
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 05 Id: 03 Lun: 00
  Vendor: QUANTUM  Model: VK4550J  SUN4.2G Rev: 8600
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 05 Id: 04 Lun: 00
  Vendor: QUANTUM  Model: VK4550J  SUN4.2G Rev: 8600
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 06 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 06 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 06 Id: 03 Lun: 00
  Vendor: SEAGATE  Model: ST34371W SUN4.2G Rev: 7462
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi2 Channel: 06 Id: 04 Lun: 00
  Vendor: CONNER   Model: CFP1080E SUN1.05 Rev: 5150
  Type:   Direct-Access                    ANSI SCSI revision: 02


Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.129 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
