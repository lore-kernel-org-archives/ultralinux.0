From: "David S. Miller" <davem@redhat.com>
Date: Fri, 17 Sep 1999 01:36:53 +0000
Subject: Re: bug in 2.2.13pre8 on Ultras (more oops)
Message-Id: <marc-linux-ultrasparc-93753277608591@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93749568905459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93749568905459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


This is truncated again, from the beginning:

ff80003c88000 l1: 0000000000000000 l2: 0000000000650800 l3: 000000000058c400
l4: 000000000058c400 l5: 0000000000003fff l6: 00000000005e3100 l7: 0000000000000000
i0: fffff80003c7fa50 i1: 0000000004005807 i2: 0000000000100009 i3: 0000000000000169

You aparently grabbed this from /var/spool/log/messages, so why don't
you bzip it up along with the System.map file for the running kernel,
and put it up for FTP so I can inspect this by hand?

Later,
David S. Miller
davem@redhat.com
