From: "Robert G. Brown" <rgb@phy.duke.edu>
Date: Wed, 15 Jul 1998 17:11:40 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531045@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 15 Jul 1998, Ward Deng wrote:

> > 
> > I thought the real claim to fame of all of Sun's multiprocessing
> > systems (and the SP2, and the Power Challenge, and the...) has always
> > been their really fast/expensive IPC bus, not their interface to
>                                    ^^^^^^^
> What do you mean that?
> 
> IBM RS6000/SP2 is distributed memory system, or workstations linked with
> external high-speed switch. Sun's MP systems are all SMP design. SGI 
> Power Challenge or Onyx are SMP too. The newer SGI Origin is SMP with
> special memory links -- ccNUMA. They are very different architectures
> while SP nodes are no different from IBM's RS6000 workstations.

That is what I meant by that.  Perhaps I should have said "IPC
Channels" to avoid suggesting that they were all actually bus-linked.

The point I was trying to make is that "real parallel supercomputer"
systems advertise CPU-to-CPU (or process to process, if you want to be
picky) communication rates that significantly exceed what one can (or
could when the systems originally were released) be obtained from a
conventional network, i.e. a beowulf.  Whether IPC's are attained with
real shared memory on a common, arbitrated bus, dedicated, proprietary
internode switches, or whatever, the "point" of buying expensive "real"
parallel multiprocessing systems instead of building and using a
beowulf is that they supposedly have faster (often significantly, e.g.
order of magnitude faster) IPC's with reduced latencies to match and
hence far better scaling for fine-grained parallel problems.

For coarse to medium grained parallel problems, of course, this extra,
VERY EXPENSIVE speed is wasted, which is why in many cases a per-node
comparison of an SP2, a Power Challenge, and a beowulf comes down to
essentially a direct comparison of the CPU speeds themselves.  A
factor of two CPU speed advantage is worthless if the COST of the SP2
(per processor) is 5-10 times that of a commodity processor.

Re: the other part of the discussion, many of these systems ALSO have
fast mainframe-like interfaces to various peripherals, e.g. disk
arrays, to avoid bottlenecks that obviously can occur there, but
sensible calculation design avoids peripheral communications like the
plague it is -- if possible.  Disk operations are typically VERY
expensive even with the fastest disk, measured in wasted raw CPU time.

I think that bottom line (on which most of us can agree) is that when
considering or comparing parallel systems (or preparing to engineer
one of your own) one cannot be misled by glitter or the dazzling array
of benchmarks of this or that -- one has to consider the problems to
be solved with the system FIRST AND FOREMOST and THEN consider the
optimal parallel technology from all points of view, including
communications topology, price/performance, scaling, the various
minimax involved (it does no good to buy at optimal price/performance
if the best system one can buy is too small to solve your problem).

From what I have seen on the various lists I belong to, I believe that
80-90% of parallelizable problems fall in the coarse-to-medium grain
category that is optimally accessible by a beowulf-type architecture.
10-20% (with some overlap -- the distinctions are not sharp) are
optimally accessible by garden variety "parallel supercomputers" like
the ones discussed above, and 1-2% are accessible only by exotic
systems like current generation Crays or homemade/custom/dedicated
parallel systems.

    rgb

Robert G. Brown	                       http://www.phy.duke.edu/~rgb/
Duke University Dept. of Physics, Box 90305
Durham, N.C. 27708-0305
Phone: 1-919-660-2567  Fax: 919-660-2525     email:rgb@phy.duke.edu
