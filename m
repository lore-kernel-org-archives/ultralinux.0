From: Steve Dunham <dunham@cse.msu.edu>
Date: Wed, 18 Nov 1998 18:53:52 +0000
Subject: Re: More detailed UltraPenguin CD-ROM making instructions
Message-Id: <marc-linux-ultrasparc-91146943029335@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91084546630118@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91084546630118@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz> writes:

> As I've received a couple of requests for more detailed instructions how to
> make the bootable CD, here they are:

I followed the instructions, and ended up with a CD that would boot
the kernel off of the CD, but then fail with:

  "Unable to mount root filesystem on device: 0b:00"

Any ideas what is wrong?  It is loading the kernel from the CD and the
CDROM is the only CDROM attached to the machine.  The above message is
preceeded by a "media changed on sr0" so I assume it is detecting the
CD and everything.


Steve
dunham@cse.msu.edu
