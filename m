From: Jes Sorensen <Jes.Sorensen@cern.ch>
Date: Mon, 08 May 2000 07:50:11 +0000
Subject: Re: Oops with 2.2.14 on Ultra 1.
Message-Id: <marc-linux-ultrasparc-95777246003199@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95754803607277@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95754803607277@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>>>>> "David" = David S Miller <davem@redhat.com> writes:

David> /dev/port is not supported on Sparc, any behavior from
David> accessing it is guarenteed to be dependant on the phase of the
David> moon, and other random sources.

David> Ie. figure out what program is messing with /dev/port and get
David> rid of it.

Why not just disable /dev/port access like it's done on the m68k?

Jes
