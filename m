From: Clint Adams <schizo@debian.org>
Date: Wed, 24 Dec 2003 16:50:03 +0000
Subject: Re: [Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107228461527143@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107225664808375@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107225664808375@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Looking at the prtconf output from the T1/200 and the SB-1000 (for which the
> bbc_envctrl driver was written), it is clear no current driver will support
> this environmental monitoring implementation.  However, if you simply want the
> CPU temperature you should be able to use the LOM console to retrieve this
> information, independent of the host OS (though Solaris may be required for
> initial LOM configuration).  For anything more, you'll likely have to wait
> until a developer gets a hold of the hardware and decides to take a try.

I want it from Debian userland, not the LOM console.  Are "SUNW,lomh"
and "lomp" relevant?  Is the information likely to be accessed through
pmu/i2c/temperature ?
