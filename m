From: Andreas Jungmaier <ajung@etecs3.uni-duisburg.de>
Date: Thu, 17 Dec 1998 08:58:34 +0000
Subject: Re: Changes in UltraPenguin 1.1.9 area
Message-Id: <marc-linux-ultrasparc-91388583006314@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91386114230666@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91386114230666@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello everyone,

I recently installed UltraLinux-1.1.9 on two UltraSparc1. I am impressed,
as the install went out of  the box, just as I was used to by other 
RedHat versions. So, first of, thanks a lot to all who contributed to that
port.

However, I tried adding a new harddrive (SEAGATE   Model: ST39173LC),
which supposedly has around 9 GBytes, and cannot access that drive.
The message displayed at bootup is shown below. I am not sure, whether
the announcement Jakub Jelinek made concerning the most recent changes 
would help me out with this. I would appreciate any comments to that.
Message from bootup :
------------------------------------------------------------------------
esp0: IRQ 3,7e0 SCSI ID 7 Clk 40MHz CCF=8 TOut 167 NCR53C9XF(espfast)
ESP: Total of 1 ESP hosts found, 1 actually in use.
scsi0 : Sparc ESP100A-FAST
scsi : 1 host.
  Vendor: IBM       Model: DORS32160SUN2.1G  Rev: WA7A
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sda at scsi0, channel 0, id 0, lun 0
  Vendor: SEAGATE   Model: ST39173LC         Rev: 5702
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sdb at scsi0, channel 0, id 5, lun 0
  Vendor: TOSHIBA   Model: XM-5401TASUN4XCD  Rev: 1036
  Type:   CD-ROM                             ANSI SCSI revision: 02
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
scsi : detected 1 SCSI cdrom 2 SCSI disks total.
esp0: target 6 asynchronous
Uniform CDROM driver Revision: 2.50
esp0: target 0 [period 100ns offset 15 10.00MHz FAST SCSI-II]
SCSI device sda: hdwr sector= 512 bytes. Sectors= 4226725 [2063 MB] [2.1
GB]
esp0: target 5 [period 100ns offset 15 10.00MHz FAST SCSI-II]
sdb: Spinning up
disk.....................................................................
..................................not responding...
sdb : READ CAPACITY failed.
sdb : status = 0, message = 00, host = 0, driver = 28 
sdb : extended sense code = 2 
sdb : block size assumed to be 512 bytes, disk size 1GB.  
sunlance.c:v1.11 27/Dec/97 Miguel de Icaza (miguel@nuclecu.unam.mx)
---------------------------------------------------------------------------
Part of the announcement by Jakub Jelinek:
> - Fix problems if one has more than 255 heads/tracks in the sun disklabel.
> and probably a couple of other issues I forgot to mention.
> 
---------------------------------------------------------------------------
I might add, that calling fdisk yielded an error saying that /dev/sdb
could not be accessed...

Andreas

Andreas Jungmaier, Dipl.-Ing.
Gerhard-Mercator-Universitaet-GH Duisburg FB9/DV
Bismarckstr. 81, 47048 Duisburg, Germany                                
Tel.: +49 (0203) 379-2728       Fax: +49 (0203) 370439
mailto:ajung@uni-duisburg.de    www.fb9dv.uni-duisburg.de/members/ajung/
