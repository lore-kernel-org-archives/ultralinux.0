From: David Miller <davem@twiddle.net>
Date: Fri, 02 Apr 1999 17:00:09 +0000
Subject: Re: order of disk recognition
Message-Id: <marc-linux-ultrasparc-92307274831829@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92307233031541@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92307233031541@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 2 Apr 1999 08:53:21 -0800 (PST)
   From: Charu Chaubal <chaubal@ha3mpk.Eng.Sun.COM>

Short answer, there is nothing you can really do.
(Didn't I tell you this in private email?)

   Thanks (please ask if you need more details),

Longer answer, you may get something a little bit satisfatory on PCI
systems if you specify the "pci=onboardfirst", at least here the
device ordering will be slightly more sane but it's a hack and doesn't
provide a real solution.

Later,
David S. Miller
davem@redhat.com
