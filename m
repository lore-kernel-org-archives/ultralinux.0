From: Greg Boyce <gboyce@rakis.net>
Date: Mon, 21 Oct 2002 15:17:10 +0000
Subject: Problems with Networking on Ultra 1 Creator
Message-Id: <marc-linux-ultrasparc-103521349411848@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Folks,

I've been attempting to track down a problem I've been having lately with
my Ultra 1 Creator.  When transfering files to/from the machine, it ends
up hanging for short periods of time giving the following errors:

eth0: transmit timed out, resetting
eth0: Happy Status 00000000 TX[000003ff:00000401]
eth0: Auto-Negotiation unsuccessful, trying force link mode

I've been attempting to locate a fix in the archives, but none of the
fixes I've found so far seem to work for me.

I attempted applying the patch found here:
http://www.uwsg.iu.edu/hypermail/linux/kernel/0208.1/0764.html

And the patch located here:
http://www.uwsg.iu.edu/hypermail/linux/kernel/0208.1/0798.html

I've also tried upgrading from 2.4.18 to 2.4.19 after reading the problem
was fixed in one of the 2.4.19-pre* kernels, and I attempted to downgrade
to 2.2.20.  None of these things worked.

Does anyone have a definitive fix for this problem?  If not, does anyone
have any possible fixes they'd like me to try out for testing?

-- 
Gregory Boyce

