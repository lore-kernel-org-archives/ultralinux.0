From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 14 Jan 1999 04:49:25 +0000
Subject: Re: A problem with printk?
Message-Id: <marc-linux-ultrasparc-91628942430743@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91628874630540@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91628874630540@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Thu, 14 Jan 1999 13:37:29 +0900
   From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>

   If someone can give me a hint about what is wrong I will apreciate
   very much. I really don't think printk is buggy but I hadn't no
   other subject.

Pay attention to the cflags given to the compiler when the sparc64
kernel build compiles the modules... some are different on every
platform, but most are the same.

For sparc64 with module symbols you'd do something like:

export KSRC_PATH=/path/to/kernel/src

#if defined(ULTRAPENGUIN_1_1_9) || (SPARC64_GCC_IS_EGCS)
sparc64-linux-gcc -D__KERNEL__ -I$(KSRC_PATH)/linux/include -Wall \
                  -Wstrict-prototypes -O2 -fomit-frame-pointer -m64 \
                  -pipe -mno-fpu -mcpu=ultrasparc -mcmodel=medlow \
	          -ffixed-g4 -fcall-used-g5 -fcall-used-g7 \
                  -Wno-sign-compare -DMODULES -DMODVERSIONS \
                  -include $(KSRC_PATH)/linux/include/linux/modversions.h \
                  -c -o mymodule.o mymodule.c
#else
sparc64-linux-gcc -D__KERNEL__ -I$(KSRC_PATH)/linux/include -Wall \
                  -Wstrict-prototypes -O2 -fomit-frame-pointer \
                  -pipe -mno-fpu -mtune=ultrasparc -mcmodel=medlow \
	          -ffixed-g4 -fcall-used-g5 -fcall-used-g7 \
                  -Wno-sign-compare -DMODULES -DMODVERSIONS \
                  -include $(KSRC_PATH)/linux/include/linux/modversions.h \
                  -c -o mymodule.o mymodule.c
#endif

Later,
David S. Miller
davem@dm.cobaltmicro.com
