From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Mon, 13 Sep 1999 17:49:36 +0000
Subject: X still crashing
Message-Id: <marc-linux-ultrasparc-93724516728596@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub,

Your latest Xsun24 binary is improved over the previous version,
however it is still crashing.  I'd say it crashes about once every few 
days.  I'll tell you a sure way to make it crash, though it will take
a while.  If you run `xlock -mode random' it will crash it every time, 
though I don't know which screen saver is doing it.

I will be happy to try and get you some debugging output if you can
give me some instructions on how I could be of some help.

Oh yes, there is another problem with X that has existed for a long
time.  I redisplay Xemacs from a Solaris box onto my Linux box and
every time I move a window over the Xemacs window it messes up the
left side of the Xemacs window.  I'd estimate less than 5 columns of
pixels are affected.  It certainly isn't as much of a problem as X
crashing all together.

:-)

-- 
Ryan
