From: David Miller <davem@twiddle.net>
Date: Mon, 22 Mar 1999 01:05:55 +0000
Subject: Re: questions about FBCON stuff...
Message-Id: <marc-linux-ultrasparc-92206452928303@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92206416028188@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92206416028188@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Sun, 21 Mar 1999 19:46:26 -0500 (EST)
   From: Peter Jones <pjones@redhat.com>

   Is CONFIG_FB_ATY supposed to be dependant on CONFIG_EXPERIMENTAL ?

On some platforms yes.

   Also, is CONFIG_FB_IGA sparc only, as it appears to be currently
   defined, or will it work on other hardware as well.  Its PCI, so
   unless there is some very specific reason it should only be in the
   sparc tree, I think in my cleanup I'm going to make it more
   generic...

It's PCI, but it is written with some sparc specific things in mind
and we do not want people on other platforms to play with it lightly
so we do not offer it as a config option on other platforms.

Please don't start playing around here without consulting the
maintainer of the fbcon layer (Geert Uytterhoeven
Geert.Uytterhoeven@cs.kuleuven.ac.be).

Odds are that things are the way they are right now for a very good
reason.

Later,
David S. Miller
davem@redhat.com
