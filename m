From: "David S. Miller" <davem@redhat.com>
Date: Wed, 16 Jan 2002 17:54:51 +0000
Subject: Re: [buytenh@gnu.org: [cry for advice] sparc64 bridging troubles]
Message-Id: <marc-linux-ultrasparc-101120405202125@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101068859405697@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101068859405697@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Lennert Buytenhek <buytenh@gnu.org>
   Date: Wed, 16 Jan 2002 12:46:46 -0500
   
   Yup.  The attached patch (plus some userspace changes) is what makes
   things tick again, but it's not exactly a marvel of beauty.. :(

I'm not applying this patch ever to my tree.  What about other private
ioctls overloaded to SIOCDEVPRIVATE+3?

See why none of this SIOCDEVPRIVATE crap can ever work properly?
