From: Steve Dunham <dunham@cse.msu.edu>
Date: Mon, 09 Aug 1999 21:12:17 +0000
Subject: Re: sunpc card support?
Message-Id: <marc-linux-ultrasparc-93423426219439@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93386006730675@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93386006730675@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz> writes:

> On Thu, Aug 05, 1999 at 09:25:44AM -0400, Ryan Cresawn wrote:
> > What kind of support, if any, exists for the sunpc S-bus card in
> > sparc64 Linux?  What about Solaris emulation and the sunpc card?

> Until I get my hand on one there is no support. Even then support won't be
> easy because Sun is not willing to give any documentation on it as they want
> to protect it against competition.
> Solaris emulation won't help you at all, because you need a driver for the
> card which will do all the low-level things like sending interrupts between
> both CPUs and DMA in both ways.

Note that there also is a SunPCI card out.  (We got 48 Ultra10's with
SunPCI cards.)  They are AMD k6-350's (not 100% sure about the clock),
with USB, audio, video, etc on the board. 

The solaris driver does networking, hard disk emulation and whatever
is necessary to display graphice in an X window.  (Stock Linux kernels
won't boot on it because the fake HD reports a weird geometry, I
haven't gotten around to tweaking the kernel to work on it yet.)


Steve
dunham@cse.msu.edu
