From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Mon, 22 Mar 1999 20:23:15 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92213452604539@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:

 > If you have the sparc64-linux-gcc compiler and recent binutils (UltraPenguin
 > 1.1.9 e.g. has such packages), then just cd /usr/src/linux; make config (if
 > you don't want to bother with selecting config options, do make oldconfig
 > instead, it will have reasonable defaults). Then
 > make dep && make && make modules && make modules_install
 > cp vmlinux /boot/vmlinux-2.2.4
 > echo "disk /boot/vmlinux-2.2.4" > /proc/sys/kernel/reboot-cmd
 > /sbin/reboot

Jakub,

Thanks for the information.  I tried your instructions, however it
didn't complete.  Here's where it stopped.

By the way, I have a really hard time understanding the version
numbering within the UltraPenguin distribution.  It seems to me that
the UltraPenguin-1.1.9 has been evolving under the same name for
months.  I wonder if it would be wise to change to something simple
based on the date like WINE.  What do you think?


##### this is the result of "make" ######


sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux/include -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -m64 -pipe -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare   -c -o fonts.o fonts.c
fonts.c:61: #error No fonts configured.
fonts.c: In function `fbcon_find_font':
fonts.c:72: warning: comparison is always 0 due to limited range of data type
make[3]: *** [fonts.o] Error 1
make[3]: Leaving directory `/usr/src/linux-2.2.4/drivers/video'
make[2]: *** [first_rule] Error 2
make[2]: Leaving directory `/usr/src/linux-2.2.4/drivers/video'
make[1]: *** [_subdir_video] Error 2
make[1]: Leaving directory `/usr/src/linux-2.2.4/drivers'
make: *** [_dir_drivers] Error 2

-- 
Ryan
