From: Kris Boulez <kris@belbone.be>
Date: Wed, 27 May 1998 09:45:53 +0000
Subject: Re: Install of silo fails on ultra-2
Message-Id: <marc-linux-ultrasparc-90222356531084@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531081@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531081@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Quoting David S. Miller (davem@dm.cobaltmicro.com):
>    Date: 	Wed, 27 May 1998 11:07:38 +0200
>    From: Kris Boulez <kris@belbone.be>
> 
>    P.S. bootimage is tftp-ed and install via nfs mount.
> 
> I've seen this problem.  You can still salvage the installation by
> booting the tftpboot image with root=/dev/xxx where xxx is the root
> partition device.  Then once it is up, login as root and run
> "/sbin/silo" then you can reboot from the disk just fine.
> 
Booting with "boot net linux root=/dev/sda1" hangs at 


  Partition check:                                                              
   sda: sda1 sda2 sda4                                                          
  RAMDISK: Compressed image found at block 0                                    
  VFS: Mounted root (ext2 filesystem).                                          


Kris,
-- 
Kris Boulez				kris@belbone.be
