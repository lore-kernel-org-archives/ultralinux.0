From: "David S. Miller" <davem@redhat.com>
Date: Fri, 03 Sep 1999 16:12:25 +0000
Subject: Re: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93637513403724@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93637236300459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93637236300459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
   Date: Fri,  3 Sep 1999 12:11:10 -0400 (EDT)

   David S. Miller writes:
    > Have you installed the XFree86-Sun24 rpm updates for 6.0?

   Yes...here's a list of what's installed.

Ok, would you mind running your X session as root from the console for
just one day until you get a crash?  I believe this is the only way to
get the crash dump with the script hacks, due to security checks in
the X server wrappers.

Once you get a dump, send me the output and I can then finally debug
this problem.

Later,
David S. Miller
davem@redhat.com
