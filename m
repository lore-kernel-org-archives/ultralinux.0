From: Ward Deng <wdeng@KachinaTech.COM>
Date: Sat, 25 Jul 1998 23:34:59 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531077@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> >From what I have seen on the various lists I belong to, I believe that
> 80-90% of parallelizable problems fall in the coarse-to-medium grain
> category that is optimally accessible by a beowulf-type architecture.
> 10-20% (with some overlap -- the distinctions are not sharp) are
> optimally accessible by garden variety "parallel supercomputers" like
> the ones discussed above, and 1-2% are accessible only by exotic
> systems like current generation Crays or homemade/custom/dedicated
> parallel systems.

My background is computational mechanics and I have been working in 
fluid dynamics and solid mechnics for many many years. I can say most of
the applications in these fields are not "multi-body" type, ie. Beowulf
type problems. If you guys are interested in the problems/applications,
look into the "blue book" or its website (http://www.hpcc.gov/pubs/blue98). 

It has been hard to communicate computer scientists (:-) since most of them
do not understand what PDE stands for. ;-) To put it in short, the difficulty
is from the view of level of discretization. Almost any problem that needs to 
be simulated numerically is impossible to start from particle level (atoms,
molecules...). Instead we use _continuum_ to discribe it. In mathmatical
formulae, we "smoothen" the physical domain and treat it "infinite dimension" 
(remember Newton's calculus...) then we partition the domain into "finite 
dimension" such as "cells," "grids" and "elements" so we can calculate 
the mathematical formulae to get the approximate solutions under certain
_boundary_ and/or _initial_ conditions. You can just imagine Beowulf problem
consists around 1 million particles of rigid bodies. How many particles 
are involved in one cubic-foot of soil in the foundation of your house? How do
you deal with the particles with irregular shapes with only statistical data
available? How about add plasticity (soil particle will change its shape)
and viscousity (moisture...)?

Of course, we dream someday we can use super-supercomputer to solve our
problems starting from discrete domain but it is not possible in a forseeable
future. Beowulf-type COTS systems are very exciting but the majority of 
numerical problems are not in that category. Searching for low-latency,
high-throughput inter-processor communication should be still listed high
on our agenda. At least this is my view.

Just add a little bit noise into this interesting discussion.

--ward deng

Ward Deng, Ph.D                   |  Kachina Technologies, Inc.
Vice President and COO            |  4708 Douglas MacArthur Road NE,
Tel: 505-888-5934                 |  Albuquerque NM 87110
Fax: 505-888-5902                 |  info@KachinaTech.COM
Email: Ward.Deng@KachinaTech.COM  |  URL: http://www.KachinaTech.COM
