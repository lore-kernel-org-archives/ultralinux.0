From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Tue, 14 Jul 1998 07:00:29 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531037@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Mon, 13 Jul 1998 21:44:51 -0400
   From: Shannon <shendrix@escape.widomaker.com>

   On this note, does Sun have anything that will emulate x86 BIOS?

   My Alphastation runs the BIOS for all my PCI cards via emulation in
   the ROM during bootup.

No they don't, and personally I feel this was a good decision.

We had argued internally inside the UltraPenguin team whether we
should add such a thing to either our bootloader or the kernel
itself.  We balked for two reasons:

1) It's heavily complex, even 'real PC' machines crash on bootup due
   to really strange x86 firmware found on some PCI cards.  It would
   take several long months of non-stop work to get this right.

2) We felt that in no case were users being left totally out of
   luck because we lacked this "feature".

My main reason for agreeing with Sun for not providing such a thing is
simple, it's silly to further encourage PCI card manufacturers to
continue writing CPU-specific firmware.  I know it's a pipe dream to
get them to stop entirely...  (and note IMHO things like OBP are the
right way to go, CPU independant and quite portable)  And yes I
realize how much the way PCI is implemented on PC's drives what the
"PCI standard" really is.

Later,
David S. Miller
davem@dm.cobaltmicro.com
