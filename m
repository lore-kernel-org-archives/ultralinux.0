From: "Robert G. Brown" <rgb@phy.duke.edu>
Date: Mon, 13 Jul 1998 17:04:22 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531033@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 13 Jul 1998, Matthew Jacob wrote:

> 
> > but the memory interconnect is always the sticky wicket on SMP machines,
> > although for the PC, we simply dribble along at (now) 100mhz.  :)
> 
> Umm.. I thought that the new PC motherboards coming out are running
> at 400Mhz (no, not CPU speed- I mean internal bus speed...)

The current 440BX systems have a 100 MHz memory bus (50% faster than
the old PPro/PII bus but still slower than one would like).  As I
learned very forcefully recently, their cache speed is half the CPU
clock, so a 400 MHz CPU has a cache running at 200 MHz, making it
finally the equal or superior of the PPro in every respect.  The
motherboards support PC-100 SDRAM, which is measurably faster in than
EDO in some applications -- but your milage will very much depend upon
your application -- its size (does it fit in cache), its locality
(does it cache thrash bytewise or read streaming sequences of data)
and the like.  Unless you are running jobs more than a few MB in size
(including data) you will, frankly, probably not see much advantage in
the SDRAM memory or the memory clock, but folks doing large matrix
multiplies and the like have reported significant speedup and
considerably better SMP scaling of memory access times.

Now, there are a whole slew of things purported to be coming down the
pipe from Intel this fall starting with 450MHz processors, and (as I
recall) we should see "Merced" (their next generation CPU and system)
sometime next year.  In merced I believe we'll see some very
significant capacity/speed upgrades in lots of venues -- you might
check out the Intel website to see what they say.

   rgb

Robert G. Brown	                       http://www.phy.duke.edu/~rgb/
Duke University Dept. of Physics, Box 90305
Durham, N.C. 27708-0305
Phone: 1-919-660-2567  Fax: 919-660-2525     email:rgb@phy.duke.edu
