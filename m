From: David Miller <davem@twiddle.net>
Date: Wed, 28 Apr 1999 16:07:11 +0000
Subject: Re: Raid5 on a 450 problem
Message-Id: <marc-linux-ultrasparc-92531581808759@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92531492507466@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92531492507466@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 28 Apr 1999 17:37:03 +0200
   From: Flavio Pescuma <edtfopa@malmen.ericsson.se>

   Even fdisk doesn't recognize the parameters of the disks which I
   need to re-enter manually

Do not start partitions at cylinder 0 which will be part of a raid,
begin them at cylinder 1 instead, the same goes for swap partitions.

Later,
David S. Miller
davem@redhat.com
