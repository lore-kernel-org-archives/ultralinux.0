From: Peter Jones <pjones@redhat.com>
Date: Mon, 12 Apr 1999 00:08:46 +0000
Subject: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92387605531299@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

(Yeah, one of these days I'll actually learn something)

As I've said before, I'm attempting to get an es1371 going, and I'm
running into a couple of things that are perplexing me...  I've managed to
get it to compile in (obvious config.in patch), and with some patches
against es1371.c it doesn't even Oops anymore (these are getting merged in
to the main kernel, I think... Thomas Sailer sent them off to Alan
sometime last week), but I'm having some trouble after that, regarding how
the ioctl()'s work on sparc64...

It looks as if the switch(cmd){...} in sys32_ioctl() goes through, and if
it finds an ioctl() in its list, it runs it, and if not, it prints an
error.  But if I run, say, aumix, I get:

<4>sys32_ioctl: Unknown cmd fd(3) cmd(40044dfe) arg(0002563c)

I go to look what ioctl() it happened to send, and its doing

open("/dev/mixer", O_RDWR)              = 4
ioctl(4, SOUND_MIXER_READ_DEVMASK, 0x2563c) = -1 EINVAL (Invalid argument)

Which doesn't make sense to me, because SOUND_MIXER_READ_DEVMASK is in its
list, and is handled by es1371.c ...

Have I missed something obvious?

 -- Peter

"If people are good only because they fear punishment, and hope for reward,
then we are a sorry lot indeed."
		-- Einstein
