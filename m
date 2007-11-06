From: David Miller <davem@davemloft.net>
Date: Tue, 06 Nov 2007 07:11:49 +0000
Subject: Re: [Bug 9106] Sun Fire v100 dmfe driver bug
Message-Id: <20071105.231149.103178092.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
In-Reply-To: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Grant Grundler <grundler@parisc-linux.org>
Date: Mon, 5 Nov 2007 23:53:22 -0700

> On Sun, Nov 04, 2007 at 01:49:58PM -0800, David Miller wrote:
> > 3) Sun doesn't initialize the SROM for the onboard network devices.
> >    You have to obtain the MAC address and other settings by fetching
> >    them from the openfirmware device properties.
> 
> Dave,
> Indeed - I wasn't thinking "outside the box". I didn't realize
> firmware set up resources needed for bit-banging. I thought
> the seprom was accessed via I/O Port space registers.

It's not that the SROM isn't there and working, it's simply that Sun
doesn't bother filling the SROM with any contents as the standard way
to indicate device properties is via the firmware device tree.

> Ok - will hack something up and ask the user to try that.
> I'll also look for CONFIG_OF/CONFIG_SPARC in tulip_core.c as
> suggested by Richard Mortimer.

Thanks!
