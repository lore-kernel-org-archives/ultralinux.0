From: Peter Jones <pjones@redhat.com>
Date: Wed, 06 Oct 1999 14:53:46 +0000
Subject: Re: tulip under linux sparc?
Message-Id: <marc-linux-ultrasparc-93922345621784@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93909789806109@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93909789806109@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 5 Oct 1999, Bob Drzyzgula wrote:

> I think that the issue is that, to be functional at boot time, there
> has to be OBP driver code for the card *either* in the card *or* in
> the system OBP. Sun's stock OBP has driver code for some basic PCI
> cards, but it could not be described as "wide support for most cards".
> Manufacturers that wish to sell in the SPARC/PCI market have the
> option of writing their own OBP driver and putting it in ROM on the
> card in a standard manner; in that case the system OBP will find it
> and can branch to that code at boot time. Adaptec does this with some
> of their SCSI cards, for example. But once a system is up and running,
> the ability of an OS to use the card is a function of the OS. It may
> be the case that Solaris won't use cards that aren't reported by the
> OBP, but Linux can go ahead and probe for cards that the OBP didn't
> recognize. (Did I get this right, Dave?)

Pretty much, yeah.  Most PCI cards should work, With a few minor
exceptions, such as _old_ Buslogic scsi boards tend to make my u10 not get
_to_ openboot, some cards do some rather obnoxious things with their DMA,
like ess Maestro's and a couple of other sound cards i've got.  

But yeah, there isn't any good reason a vendor can't make a PCI card that
works fine on a sparc and an x86 (and an alpha, and a powerpc).  OBP
support just affects doing things from the firmware, like booting the
device.

 -- Peter

"Who's scruffy-looking?"
		-- Solo
