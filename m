From: David Miller <davem@twiddle.net>
Date: Mon, 12 Apr 1999 01:26:47 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92388082301521@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Sun, 11 Apr 1999 20:08:46 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   <4>sys32_ioctl: Unknown cmd fd(3) cmd(40044dfe) arg(0002563c)

 ...

   open("/dev/mixer", O_RDWR)              = 4
   ioctl(4, SOUND_MIXER_READ_DEVMASK, 0x2563c) = -1 EINVAL (Invalid argument)

 ...

   Have I missed something obvious?

Might want to double-check on strace, have it print out the raw hex
value for the ioctl cmd code and make sure it matches up.

Later,
David S. Miller
davem@redhat.com
