From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Fri, 08 Jan 1999 23:07:56 +0000
Subject: bounced out....
Message-Id: <marc-linux-ultrasparc-91594760531430@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91583653826018@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91583653826018@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Brent Thorpe writes:
 > Disclaimer:
 > 
 > I am totally DUMB on Linux and a first time user.  Sorry for the level
 > of these questions.
 > 
 > 
 > 
 > Any idea why I get immediately logged back out when I try to log in
 > using  the graphical (X11) screen on linux?  I am running Ultrapenguin
 > 1.1.9 on an Ultra 1.  I can log in from a non graphical way, just not
 > through the X stuff.

The first thing to check is your .xsession file in your home
directory.  Just go ahead and do "chmod 755 .xsession".  If that
doesn't get it write me back.

YWIA

--
Ryan
