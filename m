From: Douglas Eadline <deadline@plogic.com>
Date: Tue, 14 Jul 1998 18:07:25 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531038@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 13 Jul 1998, Mike wrote:

> Robert G. Brown wrote:
> 
> > The current 440BX systems have a 100 MHz memory bus (50% faster than
> > the old PPro/PII bus but still slower than one would like).  As I
> > learned very forcefully recently, their cache speed is half the CPU
> > clock, so a 400 MHz CPU has a cache running at 200 MHz, making it
> > finally the equal or superior of the PPro in every respect.  
> 
> That was so until just over a week ago. The Xeon version of the Pentium
> II runs the L2 cache at processor speed. So far as I can see, this has a
> minimal effect on improving performance. The only plus is being able to
> run 8 of them together.
> 
> Mike.
> 

Well the first news I read about the Xeon and supporting chipset
had some bug(s).  IMO, the Xeon is being positioned away from the PII
(although inside it is a Pentium II with faster cache).  I see the Xeon
is priced VERY expensive because it is intended for the server market.
I think it is Intel's plan to get more $$ for its CPUs that are
used in servers.  Servers always provide manufactures more margin than
desktops, but up until now, servers used "desktop chips" like the PII and
Pentium Pro.  So Dell and Compaq could make much more $$ selling a server,
but Intel made the same amount.  Now that will change.  Look at the quantity
1000 price for the Xeon:

400 MHz - 2 MB cache $4489 !!!!!!!!!!!
400 MHz - 1 MB cache $2836
400 MHz - 512K cache $1124

Some report that the performance difference will be only 10%
compared to a PII of the same speed - which of course depends
on the application.   Other than a faster cache, the only big difference
is that the Xeon can run 4 or even 8 on a motherboard.  So Intel
now has a differentiated product for it's server customers.  Whether
the cost is worth the performance gain for single user SMP or SMP
clusters remains unclear.

Doug Eadline


-------------------------------------------------------------------
Paralogic, Inc.           |     PEAK     |      Voice:+610..861.6960
115 Research Drive        |   PARALLEL   |        Fax:+610.861.8247
Bethlehem, PA 18017 USA   |  PERFORMANCE |    http://www.plogic.com
-------------------------------------------------------------------
