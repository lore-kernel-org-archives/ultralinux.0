From: "David S. Miller" <davem@redhat.com>
Date: Wed, 01 Sep 1999 14:11:28 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93619577818692@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
   Date: Wed,  1 Sep 1999 09:48:21 -0400 (EDT)

   I'd really like to run `startx' as myself and not root, but if it
   is necessary then I will.  I will let you know how it goes.

Note that we may end up finding out that it's the window manager or
some application which is drawing on the root window which is
crashing, and it's not the X server.

If the window manager goes south, X closes up shop and exits since the
session leader has gone away.

Later,
David S. Miller
davem@redhat.com
