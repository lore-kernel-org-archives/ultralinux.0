From: David Miller <davem@twiddle.net>
Date: Sat, 13 Mar 1999 08:00:57 +0000
Subject: Re: Run Level 5 problems
Message-Id: <marc-linux-ultrasparc-92131230525661@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92127776107725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92127776107725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


This is a known bug in xdm, reported (with a fix) by David Waddell on
the sparclinux list a week or so ago.  His fix (and what will be in
the next set of UltraPenguin X rpms) is to add:

DisplayManager*userPath:
/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games
DisplayManager*systemPath:
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11

to the /etc/X11/xdm/xdm-config file.

Later,
David S. Miller
davem@redhat.com
