From: "David S. Miller" <davem@redhat.com>
Date: Tue, 14 Sep 1999 19:51:46 +0000
Subject: Re: bug in 2.2.13pre7 on Ultras
Message-Id: <marc-linux-ultrasparc-93735292600134@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93733838218839@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93733838218839@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


The dumps seem to be corrupted, it is very crucial for the initial
oops generated to be completely visible and decoded.  Once the
first oops happens, the only thing that can really be said about
subsequent oopses are that they are due to corrupted state generated
in the first oops, it's difficult then to reason about the true cause.

Also, are you getting correctable ECC memory errors in your kernel
logs before this happens?  I am very close to starting to encourage
users to return these AXi boards to Sun and asking for fixed parts
which do not generate these ECC memory errors.  They addresses
generating the ECC errors are always at the same exact spot, with the
same ECC syndrome, regardless of how you arrange the simms.  This is a
motherboard hardware bug without a doubt, and I'm imagining that a
large set of AXi boards produced in the past half year have this
problem. :-(

I know this issue has never turned up on any other UltraSparc's,
because if they did the machine would lock up at bootup and people
would have told me about it :-)

Later,
David S. Miller
davem@redhat.com
