From: "David S. Miller" <davem@redhat.com>
Date: Wed, 15 Sep 1999 08:10:21 +0000
Subject: Re: bug in 2.2.13pre7 on Ultras (more oops)
Message-Id: <marc-linux-ultrasparc-93738345526385@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93738047523759@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93738047523759@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: pau@readysoft.es
   Date: Wed, 15 Sep 1999 09:42:23 +0200 (CEST)

   2.2.13pre7 + raid5 patches + ncr patch from Gerard Roudier Tha
   machine sill runs ultrapenguin and the kernel is compiled on
   ultrapenguin -see at the gcc compiler-.

Please try the following:

1) Grab 2.2.13pre8
2) remove the NCR driver patch
3) make sure the egcs64 package is the most updated one

	? rpm -qvf /usr/bin/sparc64-linux-gcc
	egcs64-19980921-4
	? 

Thanks.

Later,
David S. Miller
davem@redhat.com
