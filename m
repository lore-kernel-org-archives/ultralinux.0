From: "Hine,C" <cph@oce.co.uk>
Date: Fri, 30 Oct 1998 17:36:07 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-90976989328432@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

[cut]
> Good news: it boots fine and gets a long way through
> installation. All the necessary RPMs were installed and I manually
> answered the X questions. Then it failed with
>     Error during "Configure timezone"
> with the log on VC3 saying
>     running /usr/sbin/timeconfig
>       tool failed
> So I did the next steps manually from the installation menu. The
> "Install bootloader" step failed with
>     cannot run /bin/rmmod: No such file or directory
> so I made a symlink to install2 just as /usr/bin/rmmod has. However,
> even after sorting out rmmos/insmod of loop.o the boot loader still
> fails to install.
[cut]

I've had a very similar experience here. Different hardware though,
Netra i (which is basically an Ultra 1 AFAIK) UltraSPARC 143MHz, 64MB
OpenBoot 3.5, 2.1Gb IBM SCSI disk, NCR53C9XF SCSI controller, Toshiba
SCSI CD-ROM, on-board (LANCE ??) ethernet.

I also first tried to install using the floppy disk method. The boot disk
works until after just the partition check it says:

   floppy0: WARNING disk change called early

then asks for the root disk. After inserting the root disk nothing happens.

I then tried the network boot method, and got results as above.

If anyone wants more details, I'll try and help.

Regards,
Chris Hine
---
Internet/Intranet Development
Oce (UK) Ltd.
Email: cph@oce.co.uk
