From: "David S. Miller" <davem@redhat.com>
Date: Thu, 25 Jan 2001 13:52:48 +0000
Subject: Re: Ultra4000 and kernel 2.4.0
Message-Id: <marc-linux-ultrasparc-98043085619050@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98043007617176@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98043007617176@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Daz writes:
 > I can boot with uni-and smp-kernels that come with rh6.2.
 > 
 > For the life of me, I cant figure out why this is happening.

Sounds like a kernel bug.  To be honest none of the sparc64 developers
even have part-time access to any Ex000 systems so we never have any
idea whether those systems work with current kernels unless someone
like you actually tries it out. :-)  I personally have not touched
an Ex000 system for nearly 2 years now, to give you some idea.

Please send "prtconf -pv" output from the machine and we'll try
to figure out what might be wrong, but no promises.

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
