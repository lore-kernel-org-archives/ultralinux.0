From: David Miller <davem@twiddle.net>
Date: Mon, 12 Apr 1999 04:11:13 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92389061606381@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Mon, 12 Apr 1999 00:04:05 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   > Might want to double-check on strace, have it print out the raw hex
   > value for the ioctl cmd code and make sure it matches up.

   open("/dev/mixer", O_RDWR)              = 4
   ioctl(0x4, 0x40044dfe, 0x2563c)         = -1 (errno 22)

   No dice, matches up just fine.  Any more ideas?

Could be a compiler bug then, put some debugging printk's into
sys32_ioctl(), one right before the big switch which goes:

   printk("sys32_ioctl(before switch): cmd(%08x) "
          "SOUND_MIXER_READ_DEVMASK(%08x)\n",
          cmd, SOUND_MIXER_READ_DEVMASK);

Then put a similar printk right below the case for
SOUND_MIXER_READ_DEVMASK itself.

This bug would explain some problems I had with the gnome mixer applet
and some other sound programs on sparc64...

Later,
David S. Miller
davem@redhat.com
