From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Wed, 01 Sep 1999 13:21:42 +0000
Subject: X still crashing
Message-Id: <marc-linux-ultrasparc-93619297513663@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am still having problems with X crashing on my Ultra2 with Creator
3D.  I am running RH 6.0 with kernel 2.2.12 and I have applied all the 
RPM updates from Redhat.  I estimate that X crashes as often as 2-3
times per day, but at least once a day.  Here is my "/etc/X11/X"
script.

 #!/bin/bash

 # the following 4 lines added for debugging purposes
 export LD_PRELOAD=/lib/libSegFault.so
 export SEGFAULT_USE_ALTSTACK=1
 export SEGFAULT_SIGNALS=all
 export SEGFAULT_OUTPUT_NAME=/tmp/Xsun24.segv.$$

 exec ../../usr/X11R6/bin/Xsun24 -fp unix/:-1 $@

I have never seen a file in /tmp created by this script.  Here's one
more thing I've noticed when X crashes.  As it is crashing the first
thing it does is paint about a one inch wide black border around the
display, it freezes for a moment, then goes to all black, restarts X,
and finally displays the X login prompt.

-- 
Ryan
