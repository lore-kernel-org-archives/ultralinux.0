From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 10 Nov 1998 14:37:17 +0000
Subject: Re: Problems installing UltraPenguin 1.1
Message-Id: <marc-linux-ultrasparc-91072903211772@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91070696700502@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91070696700502@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I have an UltraSparc2 with 3 HDs:
> - sda: With UltraLinux 1.0.9 (kernel 2.1.106) That can boot and do fine.
> - sdb: With UltraLinux 1.0.9 (kernel 2.1.106) but messed up.
> - sdc: With Solaris.
> 
> I want to install UltraLinux 1.1 on sdb but the fdisk nor the diskdruid of the installation program (tftpboot.img)
> weren't able to read the partitions of sdb nor sda. But fdisk did well during the installation of UltraPenguin 1.0.9 .
> 
> Nevertheless, sda looks good because I use it to boot Linux and fdisk just works
> fine.
> 
> So, what should I do?

dd if=/dev/sdb bs=1k count=1 | uuencode sdb.img | mail -s "Messed up part table" jj@ultra.linux.cz

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
