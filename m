From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Wed, 15 Jul 1998 11:14:23 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531042@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Jul 15, 1998 at 02:07:05AM -0600, Ward Deng wrote:
> > 
> > I thought the real claim to fame of all of Sun's multiprocessing
> > systems (and the SP2, and the Power Challenge, and the...) has always
> > been their really fast/expensive IPC bus, not their interface to
>                                    ^^^^^^^
> What do you mean that?

I belive that, in the case of the UltraSPARC, it would
refer to the Ultra Port Architecture (UPA), which
provides a point-to-point packet switched interconnect
for processors, memory and I/O. The UPA has special
accelerators for the cache coherancy mechanism, and
supports device connections with various bitwidths.
At over four processors, the UPA gets extended into
a more distributed architecture called the gigaplane.

Personally, I would rather that Sun had a distributed
memory machine... the UltraSPARC machines have per-CPU
cache but not per-CPU DRAM. I believe that the
UltraSPARC III specifically does provide for per-CPU
DRAM; I don't know excactly how that would be implemented
in a system architecture or OS-wise.

--Bob

See:
http://www.sun.com/microelectronics/whitepapers/wp95-023.html.
http://wwwwseast2.usec.sun.com/servers/enterprise/10000/Tour/interconnect.html
http://wwwwseast2.usec.sun.com/servers/enterprise/10000/wp/E10000.pdf


-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
