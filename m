From: Eric <ebrower@usa.net>
Date: Wed, 24 Dec 2003 17:42:36 +0000
Subject: Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107228794529859@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



Clint Adams <schizo@debian.org> wrote:

> lspci output from a 200

[cut]

> I note plenty of references to the ALi M7101 in the kernel source.

If you are motivated, compile the i2c-ali15x3.o module and probe the i2c bus
to see if it is hooked-up to the max1617.  

E


