From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Tue, 05 Oct 1999 15:41:58 +0000
Subject: Re: tulip under linux sparc?
Message-Id: <marc-linux-ultrasparc-93913842208796@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93909789806109@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93909789806109@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, Oct 05, 1999 at 11:04:34AM -0400, David Cooley wrote:
> 
> Hmm... Didn't know that...
> Someone had asked on one of Newsgroups I frequent a while back about using 
> PCI cards from a PC because they were less expensive, and I said to try it, 
> they may work... PCI is PCI.  I got blasted by about 6 people with the OBP 
> compliant thing...  Other than a SCSI card used for the boot disk or a net 
> card used for booting on a diskless client, would there be any restrictions 
> on using PC based PCI cards of any type?

I think that the issue is that, to be functional at boot
time, there has to be OBP driver code for the card *either*
in the card *or* in the system OBP. Sun's stock OBP has
driver code for some basic PCI cards, but it could not
be described as "wide support for most cards". Manufacturers
that wish to sell in the SPARC/PCI market have the option
of writing their own OBP driver and putting it in ROM on
the card in a standard manner; in that case the system
OBP will find it and can branch to that code at boot time.
Adaptec does this with some of their SCSI cards, for
example. But once a system is up and running, the ability
of an OS to use the card is a function of the OS. It may
be the case that Solaris won't use cards that aren't
reported by the OBP, but Linux can go ahead and probe for
cards that the OBP didn't recognize. (Did I get this right,
Dave?)

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
        http://www.drzyzgula.org/bob/electronics/
==============================
