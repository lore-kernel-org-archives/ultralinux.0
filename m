From: "Robert G. Brown" <rgb@phy.duke.edu>
Date: Mon, 13 Jul 1998 13:59:33 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531024@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 11 Jul 1998, Matthew Jacob wrote:

> 
> 
> 
> >    Date: Sat, 11 Jul 1998 19:21:14 -0700 (PDT)
> >    From: Matthew Jacob <mjacob@feral.com>
> > 
> >    Yes, but at the high end costs of CPUs are irrelevant since it
> >    usually becomes storage and network infrastructure costs that
> >    predominate.
> > 
> > This argument sounds %100 logical and correct.
> > 
> > But then why doesn't Intel just cause 4 way SMP machines to cost $20k
> > just like Sun?
> > 
> 
> Good question, although the answer may be "Intel is not in
> the system's business".
> 
> 
> 
> 

...and "manufacturer's who use Intel chips in 4+ CPU SMP machines have to
actually compete in an open market"....

I'm also not sure about the original premise.  At the high end of
multiprocessing systems (or even at the low end:-), I would have
expected the bulk of the cost to be in the design and implementation
of the bus structure that connects the processors to enable shared
access to memory, peripherals, and each other to facilitate high speed
IPC's.  Disk is cheap (especially when packaged for a standard
interface, i.e. -- SCSI UW on a PCI bus) and really NIC's (similarly
packaged) are too.  Getting disk and networks onto a bus (proprietary
or otherwise) and interfaced with lots of processors and memory and
working out all the DMA issues and cache coherence issues and
busmastering issues -- that's expensive.

I thought the real claim to fame of all of Sun's multiprocessing
systems (and the SP2, and the Power Challenge, and the...) has always
been their really fast/expensive IPC bus, not their interface to
peripherals.

    rgb

Robert G. Brown	                       http://www.phy.duke.edu/~rgb/
Duke University Dept. of Physics, Box 90305
Durham, N.C. 27708-0305
Phone: 1-919-660-2567  Fax: 919-660-2525     email:rgb@phy.duke.edu
