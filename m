From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 22 Mar 1999 20:05:04 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92213353104043@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Dave,
> 
> I have the kernel source, however I don't know how to compile/install
> it.  I am very familiar with the Intel version but not the Sparc
> version.  Is there a HOWTO?

If you have the sparc64-linux-gcc compiler and recent binutils (UltraPenguin
1.1.9 e.g. has such packages), then just cd /usr/src/linux; make config (if
you don't want to bother with selecting config options, do make oldconfig
instead, it will have reasonable defaults). Then
make dep && make && make modules && make modules_install
cp vmlinux /boot/vmlinux-2.2.4
echo "disk /boot/vmlinux-2.2.4" > /proc/sys/kernel/reboot-cmd
/sbin/reboot

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
