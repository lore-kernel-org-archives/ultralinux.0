From: Steve Dunham <dunham@cse.msu.edu>
Date: Sun, 10 Oct 1999 05:43:48 +0000
Subject: Re: tulip under linux sparc?
Message-Id: <marc-linux-ultrasparc-93953400009796@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93909789806109@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93909789806109@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David Cooley <n5xmt@bellsouth.net> writes:

> At 02:35 PM 10/5/1999 +1000, nick wrote:
> >Anyone,
> >
> >Is it possible or not to get a Netgear 10/100 card, based on the tulip
> >driver, working on a UE10 running Sparc Linux? (redhat 6.0)

> It's not possible because the netgear card has a bios/microcode setup for a 
> PC architecture.  The Sun has to have a card that is designed for the OBP 
> architecture.

This not true.  I've used both a standard PC 3Com 3c905 network card
and a standard PC Adaptec 2940 card in an Ultra 5.  It works fine with
Linux.  

(Note that You can't load the kernel from a SCSI disk without the
right BIOS, but Linux can use the devices without problem after the
kernel is loaded. - In fact the Ultra 5 that I am typing this on is
swapping off of a SCSI disk through the standard PC Adaptec controller.)


Steve
dunham@cse.msu.edu
