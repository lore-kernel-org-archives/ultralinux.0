From: Eric <ebrower@usa.net>
Date: Wed, 24 Dec 2003 09:03:51 +0000
Subject: Re: [Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107225664808375@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



Ricky Beam <jfbeam@bluetronic.net> wrote:

> Umm, the Netra T1 doesn't have an "envctrl" -- or a "SUNW,rasctrl" on an
> ebus.

Correct.  The T1/200 has an "i2c" node.  This goes back to my comment about
the driver needing to understand the OBP nodes associated with environmental
monitoring.

E


