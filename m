From: Pieter Krul <pkrul@auxio.net>
Date: Sat, 16 Oct 1999 11:39:41 +0000
Subject: Re: SCSI adapter for Ultra 10
Message-Id: <marc-linux-ultrasparc-94007416529712@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94001499230057@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94001499230057@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello Jens,

Jens Axboe wrote:

> I'm replacing my Intel PC with an Ultra 10 workstation and
> therefore I'm looking at getting a SCSI adapter that will
> work well. By looking at the kernel config options, it
> seems that at least the Adaptec aic7xxx based controllers
> and NCR 8xx series are supported. Are they both known
> to work well? I browsed through the list archives and
> couldn't find an answer to this.

I am using an Adaptec 2940UW PC card in my Ultra5, which
worked fine after I'd rebuilt the kernel with the sd and
aic driver.
You'll have to set the BIOS of the card using a PC before 
you put it in your machine (if you use the PC variant).

Regards,

Pieter
