From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Fri, 03 Sep 1999 15:56:24 +0000
Subject: Re: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93637418402758@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93637236300459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93637236300459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
 >    Date:   Fri,  3 Sep 1999 11:30:05 -0400 (EDT)
 > 
 >    http://www.redhat.com/corp/support/errata/sparc99_05_27.html
 > 
 >    This page indicates the existence of an RPM package with the name
 >    "egcs64-1.1.2-13.sparc64.rpm".  I cannot find it on their ftp site,
 >    nor do I have it installed.  I do, however have a similar package
 >    named "egcs64-19980921-4.sparc.rpm".  Here is a list of all the egcs
 >    packages I have installed.
 > 
 > I believe this is a bug in the errata, they attached the version
 > number for the 32-bit egcs update package to the egcs64 one by
 > mistake.  egcs64-19980921-4.sparc.rpm is the correct one.
 > 
 >    Should I have a stable X server since I have compiled 2.2.12 after
 >    installing all these compiler RPM updates?
 > 
 >    Does the egcs64 RPM to which Redhat references exist?
 > 
 > This depends upon your frame buffer type.  If you are having
 > X instabilities using the Creator3D framebuffer, you need to install
 > the XFree86 updates as a fix is there for the crashes most folks were
 > seeing.
 > 
 > If you are using a different frame buffer I need more details such as
 > the type.

I have a Creator 3D on an Ultra2.  I am willing to do just about
anything to help with testing the X server.  My X server crashes
almost daily and should be good for testing.  I have added the
following lines to my "/etc/X11/X" file.

grimlock:/etc/X11$ cat X
#!/bin/bash

# the following 4 lines added for debugging purposes
export LD_PRELOAD=/lib/libSegFault.so
export SEGFAULT_USE_ALTSTACK=1
export SEGFAULT_SIGNALS=all
export SEGFAULT_OUTPUT_NAME=/tmp/Xsun24.segv.$$

exec ../../usr/X11R6/bin/Xsun24 -fp unix/:-1 $@

The last time I brought up the problem on this list I was instructed
to not use prefdm, but rather startx.  I did use startx and I
experienced a crash, however I did not get anything in /tmp.  Do I
have to be logged in as root when I run startx in order to get
anything in /tmp following the next crash?

-- 
Ryan
