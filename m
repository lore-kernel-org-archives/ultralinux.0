From: Eiki Ito <eiki@hal.com>
Date: Sun, 10 May 1998 03:57:06 +0000
Subject: compiling libc5 on UP1.0
Message-Id: <marc-linux-ultrasparc-90222356530998@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530996@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530996@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Thanks David for exactly what I wanted!

I wrote:
>o include/asm should point to asm-sparc64, not asm-sparc, correct?
>
>o If I do 'configure' on UP1.0, it says
>  "Build sparc-linux library for sparc64 running linux"
>  I don't need to change sparc64 to sparc, do I?

With these two fixed, it compiled okay.  Next I'll compile
/sbin/init using this libc and try booting again.

>How easy was it to get the page table guarding and other elements of
>the Hal sparc64 chips to work with our memory management and TLB miss
>schemes in the kernel?  Can't wait to see this work, feel free to send
>patches to me for Hal/V9 support whenever you feel the urge. ;-)

SPARC64-III's memory management is quite different from SPARC64-I and II,
much closer to Ultrasparc.  TLB format is (I think) the only major
difference.  No advertise, but if you are interested please refer to
Microprocessor Report 12/08/97.

Sure, I'll send patches when they work or when the system gets shipped,
whichever comes later:)  (Don't ask me when, I'll be fired)

Thanks,

-------------------------------------
Eiki Ito

HAL Computer Systems, Inc.
1315 Dell Avenue, Campbell, CA95008, USA
e-mail: eiki@hal.com
