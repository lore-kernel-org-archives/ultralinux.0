From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Wed, 03 Jun 1998 11:56:47 +0000
Subject: Problem booting kernel 2.1.103
Message-Id: <marc-linux-ultrasparc-90222357630979@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi!

I cvs-fetched linux kernel 2.1.103 (from vger.rutgers.edu) and
successfully compiled it on my ultra-I (UP-1.0.9 installed), but it
failed to boot. I must (one more time) have missed something (rpm
update ?). Here is the boot message I get (everything seems to be ok
until entering run level 3):

--------------------------------------------------------
[...]
Enabling swap space.
Initializing random number generator...
INIT: Entering runlevel: 3
request_irq with old style irq 00000060 00000000004f7b40
Program terminated
ok 
--------------------------------------------------------

Any help appreciated,

Thierry Lafage.

-- CAPS project -- IRISA, campus de Beaulieu, 35042 Rennes cedex, France
Phone: +33 2 99 84 25 01 -- Fax: +33 2 99 84 71 71 --
http://www.irisa.fr/caps/PEOPLE/ThierryL/
