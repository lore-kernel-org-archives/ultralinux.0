From: "David S. Miller" <davem@redhat.com>
Date: Sat, 04 Sep 1999 17:39:12 +0000
Subject: Re: SUN StorEdge D1000
Message-Id: <marc-linux-ultrasparc-93646637800674@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93642093308384@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93642093308384@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Sat, 4 Sep 1999 10:33:46 -0700 (PDT)
   From: Matthew Jacob <mjacob@feral.com>

   > Which will just make the driver not try to scsi probe the
   > internal controller of these disk arrays.

   The GEM chip has problems when you try and go to other luns. I believe
   that 7.55 F/W corrected this problem.

It doesn't, that is the firmware I load onto non-PTI boards, it still
is croaking.

Later,
David S. Miller
davem@redhat.com
