From: "David S. Miller" <davem@redhat.com>
Date: Wed, 15 Sep 1999 07:34:04 +0000
Subject: Re: bug in 2.2.13pre7 on Ultras (more oops)
Message-Id: <marc-linux-ultrasparc-93738120024390@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93738047523759@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93738047523759@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: pau@readysoft.es
   Date: Wed, 15 Sep 1999 09:23:15 +0200 (CEST)

   > Also, are you getting correctable ECC memory errors in your
   > kernel logs before this happens?  I am very close to starting to
   > encourage

   If it should log anything, I don't get it. No errors in the logs or
   the console but the ones I include.

What kernel are you running?  Maybe you are running a kernel which
just ignores the CEE errors and does not log them, current 2.2.x
kernels log all correctable ECC memory errors in the dmesg logs.

Later,
David S. Miller
davem@redhat.com
