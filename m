From: "Robert G. Brown" <rgb@phy.duke.edu>
Date: Mon, 13 Jul 1998 16:56:42 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531032@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 13 Jul 1998, Matthew Jacob wrote:

> I think we're all beginning to talk about different things. I believe
> you can build a very reasonable 2 (to maybe 4-way SMP with off the shelf
> Intel parts- good both for CPU/thread performance as well as the
> attachment of a couple PCI busses. That'll not give you a balanced system,
> but a *better* balanced system than a workstation with a single bus.
> 
> When you get into bigger than this, that's when, as you say, it
> gets very expensive. And single SCSI disks *are* cheap, but the
> infrastructure for 100 of them gets quite expensive.

Total agreement.  Although I don't believe that >>most<< 4-processor
system clients are looking for systems that support a terabyte or so of
online, fast hard disk.  Or rather, we'd all probably love to have
one, if somebody else will pay for it...:-)

> > I thought the real claim to fame of all of Sun's multiprocessing
> > systems (and the SP2, and the Power Challenge, and the...) has always
> > been their really fast/expensive IPC bus, not their interface to
> > peripherals.
> 
> wrt Sun: Surely you're kidding (unless you're referring only to the EXXXK
> series).

Half kidding, maybe.  Even the old Sparc 1000 and 2000 systems had
decent IPC/memory busses compared to, well, at the time there wasn't
much to compare to but even now to a dual PPro, and if you could
afford them gave you quite a few processors on a native IPC bus
(definitely better than network IPC's).  I couldn't say what the
current profile of Sun vs IBM vs SGI multiprocessor systems is,
though, because every time I've looked at it in the the past it has
been absurdly far from commodity Intel boxes (in either dual or quad
packaging) in price/performance for our task mix.  So I've stopped
looking, except passively by following posts here and elsewhere.

At $20K for a fully equipped quad system, it sounds like Sun has made
major strides in price performance, but I'm afraid that it is still a
matter of reducing Intel's price/performance advantage for our task
mix from 3 to 2.

   rgb

Robert G. Brown	                       http://www.phy.duke.edu/~rgb/
Duke University Dept. of Physics, Box 90305
Durham, N.C. 27708-0305
Phone: 1-919-660-2567  Fax: 919-660-2525     email:rgb@phy.duke.edu
