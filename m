From: "Brandon S. Allbery" <allbery@ece.cmu.edu>
Date: Mon, 19 Oct 1998 01:52:53 +0000
Subject: Re: status of UltraPenguin?
Message-Id: <marc-linux-ultrasparc-90877629913940@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90873041330746@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90873041330746@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
+-----
| Ok, this is not the first question, so I'll answer to everybody.
| I thought 1.1 will come soon after 1.0.9, but during the time we were
| fighting little bugs in 1.0.9, redhat came with 5.1, so I have mistakenly
| merged a few packages and the result is some broken things in the
| distribution, me already not knowing which rpms have changed from stock
| redhat and which not (and why).
+--->8

That's not your fault; Red Hat started releasing 5.1 security updates for 5.0
and didn't take any care to deal with compatibility.  The initscripts update
is a major problem, as the 5.1 initscripts package assumes the Red Hat 5.1
kernel identification convention (%{version}-%{release} to identify the
modules directory in /lib/modules, whereas 5.0's used only %{version}) ---
and everything seems to work fine unless you rebuild the kernel :-(  There
are other such incompatibilities in the 5.0 patches as well.  *grumble*

This stung us bad when I was mirroring the RH50 updates for ECE and also
building new kernels to support functionality we needed... while staying with
the 2.0.33 kernel, because 2.0.34 didn't work with the Linux AFS port then
available.

-- 
brandon s. allbery	[os/2][linux][solaris][japh]	 allbery@kf8nh.apk.net
system administrator	     [WAY too many hats]	   allbery@ece.cmu.edu
electrical and computer engineering
carnegie mellon university			   (bsa@kf8nh is still valid.)
