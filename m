From: "David S. Miller" <davem@redhat.com>
Date: Sat, 06 May 2000 13:13:37 +0000
Subject: Re: Oops with 2.2.14 on Ultra 1.
Message-Id: <marc-linux-ultrasparc-95761999417370@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95754803607277@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95754803607277@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


/dev/port is not supported on Sparc, any behavior from accessing it
is guarenteed to be dependant on the phase of the moon, and other
random sources.

Ie. figure out what program is messing with /dev/port and get rid
of it.

This is not a kernel bug.

Later,
David S. Miller
davem@redhat.com
