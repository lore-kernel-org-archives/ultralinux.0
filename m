From: Eric <ebrower@usa.net>
Date: Wed, 24 Dec 2003 09:32:10 +0000
Subject: Re: [Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107225835309410@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107225664808375@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107225664808375@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



Clint Adams <schizo@debian.org> wrote:

> > Umm, the Netra T1 doesn't have an "envctrl" -- or a "SUNW,rasctrl" on an
> > ebus.
> 
> I don't think that's important; all I want is the CPU temperature.

Looking at the prtconf output from the T1/200 and the SB-1000 (for which the
bbc_envctrl driver was written), it is clear no current driver will support
this environmental monitoring implementation.  However, if you simply want the
CPU temperature you should be able to use the LOM console to retrieve this
information, independent of the host OS (though Solaris may be required for
initial LOM configuration).  For anything more, you'll likely have to wait
until a developer gets a hold of the hardware and decides to take a try.

E


