From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 05 Aug 1999 13:32:34 +0000
Subject: Re: sunpc card support?
Message-Id: <marc-linux-ultrasparc-93386006930694@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93386006730675@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93386006730675@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, Aug 05, 1999 at 09:25:44AM -0400, Ryan Cresawn wrote:
> What kind of support, if any, exists for the sunpc S-bus card in
> sparc64 Linux?  What about Solaris emulation and the sunpc card?

Until I get my hand on one there is no support. Even then support won't be
easy because Sun is not willing to give any documentation on it as they want
to protect it against competition.
Solaris emulation won't help you at all, because you need a driver for the
card which will do all the low-level things like sending interrupts between
both CPUs and DMA in both ways.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.3.13 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
