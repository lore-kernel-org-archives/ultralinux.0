From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Mon, 28 Sep 1998 19:36:33 +0000
Subject: Re: Ultralinux mailinglist dead ?
Message-Id: <marc-linux-ultrasparc-90701303330285@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90650709127366@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90650709127366@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 23 Sep 1998, Jakub Jelinek wrote:

> > 
> > is there something wrong here? 
> > i submitted some real bugs here about the kernel on my sun ultra 10
> 
> We were fixing some TLB related bugs which I think is the case of the
> segfault you encountered during last few days, there is probably one more to
> be fixed. So you just pointed to a known bug were hunting.
> Once we fix it, you're encouraged to try it (in fact, I'm delaying making
> rpms and boot images because of that corruption) and if you'll still see
> some bugs, your bug report will be welcomed.
ok the real bugs i have here 

1:	eth0 (sun happy meal) is not working on 10mb/sec half duplex
	it just times out and tries again
	eth1 (also sun happy meal) is working ok at 100mb/sec full duples
	i just need 10mb/sec cause i have a cable modem hooked up at it

2:	quoto is just crashing my computer (all tools of it edquota
	checkquota / quotaon etc.) no errors reported etc. just stops all
	input/output etc.

3:	nfs is crashing when i try to copy a big file from /nfsmount/ to
	/nfsmount/ (i heard this is a general 2.1.x problem (nfs is not
	that stable)
