From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Tue, 10 Aug 1999 19:49:41 +0000
Subject: kernel compile error or user error?
Message-Id: <marc-linux-ultrasparc-93435489819390@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

With the 2.2.10 kernel and the 2.2.11 kernel I get the following
message when trying to compile it.  Has anyone else seen this?


make[3]: Entering directory `/usr/src/linux-2.2.11/drivers/video'
sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux-2.2.11/include -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -fno-strict-aliasing -m64 -pipe -mno-fpu -mcpu=ultrasparc -mcmodel=medlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7 -Wno-sign-compare   -c -o fonts.o fonts.c
fonts.c:61: #error No fonts configured.
fonts.c: In function `fbcon_find_font':
fonts.c:72: warning: comparison is always 0 due to limited range of data type
make[3]: *** [fonts.o] Error 1
make[3]: Leaving directory `/usr/src/linux-2.2.11/drivers/video'
make[2]: *** [first_rule] Error 2
make[2]: Leaving directory `/usr/src/linux-2.2.11/drivers/video'
make[1]: *** [_subdir_video] Error 2
make[1]: Leaving directory `/usr/src/linux-2.2.11/drivers'
make: *** [_dir_drivers] Error 2

-- 
Ryan
