From: David Van Beveren <dvb@eis.com>
Date: Sun, 08 Aug 1999 21:42:19 +0000
Subject: Re: PC cards in an Ultra 5?
Message-Id: <marc-linux-ultrasparc-93414838703855@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93390361310323@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93390361310323@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Neal,

Video cards will be difficult to get working, since most are incompatible
with the Sun OBP initialization, defaulting instead to the ubiquitous FCODE
initialization. If Sun or someone implemented an extension or rewrite of the
OBP to understand ind interact with FCODE, it would be heaven sent, IMHO,
since xfree86 drivers for LOTS of video cards would be a recompile away from
being debuggable. :)

dvb


Neal Pitts wrote:

> Has anyone had any success hooking up PCI PC cards to an Ultra 5?  I'd
> love to be able to use a PC video card or sound card or whatever else in
> my Sun under Linux.  Anyone know the chances for success for something
> like this?  Thanks!
