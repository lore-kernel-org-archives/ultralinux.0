From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sat, 04 Jul 1998 13:03:46 +0000
Subject: Re: weird messages from 2.1.99, ultrapenguin-1.0.9
Message-Id: <marc-linux-ultrasparc-90222358530996@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358530992@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358530992@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jan Rychter <jwr@icm.edu.pl>
   Date: 	04 Jul 1998 15:02:55 +0200

 ...

   socket(PF_INET, SOCK_DGRAM, IPPROTO_IP) = 4
   ioctl(4, SIOCGIFCONF, 0xeffff868)       = -1 ENOMEM (Cannot allocate memory)
   gettimeofday({899539445, 839990}, NULL) = 0

 ...

   I don't see anything that would point to the problem in the strace
   output above, but then I'm not _the_ expert :)

Here is what is going awry, the SIOCGIFCONF call, try to find out what
is being passed in the 3'rd argument to that ioctl().

Later,
David S. Miller
davem@dm.cobaltmicro.com
