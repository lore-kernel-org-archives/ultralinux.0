From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Wed, 01 Sep 1999 13:48:21 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93619386515124@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
 >    Date:   Wed,  1 Sep 1999 09:21:42 -0400 (EDT)
 > 
 >    I am still having problems with X crashing on my Ultra2 with Creator
 >    3D.  I am running RH 6.0 with kernel 2.2.12 and I have applied all the 
 >    RPM updates from Redhat.  I estimate that X crashes as often as 2-3
 >    times per day, but at least once a day.  Here is my "/etc/X11/X"
 >    script.
 > 
 > Ok, first thing, double check the server rpm you have installed
 > by running "rpm -qvf /usr/X11R6/bin/Xsun24", it should print out
 > "XFree86-Sun24-3.3.3.1-52"

grimlock:~$ rpm -qvf /usr/X11R6/bin/Xsun24 
XFree86-Sun24-3.3.3.1-52

 >     #!/bin/bash
 > 
 >     # the following 4 lines added for debugging purposes
 >     export LD_PRELOAD=/lib/libSegFault.so
 >     export SEGFAULT_USE_ALTSTACK=1
 >     export SEGFAULT_SIGNALS=all
 >     export SEGFAULT_OUTPUT_NAME=/tmp/Xsun24.segv.$$
 > 
 >     exec ../../usr/X11R6/bin/Xsun24 -fp unix/:-1 $@
 > 
 >    I have never seen a file in /tmp created by this script.  Here's one
 >    more thing I've noticed when X crashes.  As it is crashing the first
 >    thing it does is paint about a one inch wide black border around the
 >    display, it freezes for a moment, then goes to all black, restarts X,
 >    and finally displays the X login prompt.
 > 
 > Unfortunately I believe that since the X server wrapper is so anal,
 > you won't get a dump file unless you run the server by beginning your
 > sessing hand as root from the console.  So change such that xdm/X does
 > not run by default with the X login screen, login as root from the
 > console, and start an X session with plain "startx".  It should give
 > you a dump using that.

I'd really like to run `startx' as myself and not root, but if it is
necessary then I will.  I will let you know how it goes.

-- 
Ryan
