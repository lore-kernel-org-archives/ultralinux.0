From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 15 Jul 1998 11:27:41 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531043@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 15 Jul 1998 07:14:23 -0400
   From: Bob Drzyzgula <bob@drzyzgula.org>

   I believe that the UltraSPARC III specifically does provide for
   per-CPU DRAM; I don't know excactly how that would be implemented
   in a system architecture or OS-wise.

It can be treated as processor local memory, and thus requires
something along the lines of NUMA to encourage localization.

I would predict that UPA is scrapped in Ultra-III (Cheetah) for a new
processor interconnect with slightly different characteristics.  I
really have high hopes for the memory bandwidth characteristics of
Cheetah in general.  It'll probably be 6 or 8 scalar as well.
(these are all blind predictions, I have no idea what it'll really
 be like)

Later,
David S. Miller
davem@dm.cobaltmicro.com
