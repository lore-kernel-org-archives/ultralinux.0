From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Fri, 10 Sep 1999 13:54:32 +0000
Subject: X crashes
Message-Id: <marc-linux-ultrasparc-93697202429176@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm frustrated because I am no longer able to get any debugging
information for the X developers to use.  I installed the
XFree86-3.3.5-0.6.0 RPM in hopes that X would crash less frequently,
but it hasn't.  I would estimate it crashes at least once a day.  I
did have several lines in my /etc/X11/X script, however I don't have
them in there now because of Jakub's modified Xsun24 binary.  Well
once I installed that new RPM it overwrote that binary and so now I'm
using a new one.  I ran "startx 2> /tmp/LOG" from the console, however
when X crashed I got no useful output.  Should I put Jakub's Xsun24
binary back on so I can send debugging information again or will it
not work with the XFree86 RPM I am now using?  Should I add the
debugging lines back into /etc/X11/X and run "startx" as root?

-- 
Ryan
