From: pau@readysoft.es
Date: Sat, 27 Mar 1999 10:59:12 +0000
Subject: Re: SCSI cards for sparc64 kernel 2.2.4
Message-Id: <marc-linux-ultrasparc-92253275620642@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92236007229522@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92236007229522@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 25 Mar 1999, Jakub Jelinek wrote:

> > I've got some UltraSparc machines with Qlogic PCI SCSI cards:
> > 
> > $ cat /proc/pci
> > .....
> > SCSI storage controller: Q Logic ISP1020 (rev 5).
> > .....
> > 
> > but it looks like there is no support for them in the Sparc architecture.
> > 
> > Is it hard to port the Intel driver to Sparc? Any hints? Anybody working
> > on it?
> 
> David Miller has one such card and told me he'll be working on it tonight.

Is there any patch? Will it be in 2.2.5?
Thx

Pau
