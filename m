From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Tue, 30 Jun 1998 09:16:24 +0000
Subject: Re: Upgrading ultrapenguin to rh-5.1
Message-Id: <marc-linux-ultrasparc-90222357631050@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631048@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631048@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
   Date: 	Tue, 30 Jun 1998 11:23:31 +0200 (MET DST)

   > I'm considering an upgrade of ultrapenguin-1.0.9 to RedHat-5.1 -- any
   > particular pitfalls I should watch out for ? Would redhat's standard
   > upgrade procedure work ?

   It depends if you have a 32bit SPARC or 64bit. If the latter, then you
   cannot do that.

Also even for 32-bit sparc, you will lose a number of bug fixes we
have done which I wasn't able to merge into rh's 5.1 rpms in time.

Later,
David S. Miller
davem@dm.cobaltmicro.com
