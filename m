From: David Miller <davem@twiddle.net>
Date: Thu, 15 Apr 1999 20:21:47 +0000
Subject: Re: Compile warning...
Message-Id: <marc-linux-ultrasparc-92420791427993@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92419958220068@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92419958220068@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Thu, 15 Apr 1999 13:52:08 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   gargleblaster:/usr/src/linux$ make
   sed: -e expression #1, char 37: Unknown option to 's'
   rm -f include/asm

I don't get this...  The first thing I do after a beta RH install is
to cvs checkout and build a kernel, so I'd notice something like this,
or else it goes by in the build output so fast I don't catch it :-)

   Which looks like its not pertenant to anything else, at all, anywhere (I
   just grepped the whole source tree for MAKEOVERRIDES ;)

   Can we just take this out?

MAKEOVERRIDES is an internal 'make' variable, it is used even though
it is not explicitly referenced.

Later,
David S. Miller
davem@redhat.com
