From: Horst von Brand <vonbrand@inf.utfsm.cl>
Date: Mon, 28 Feb 2005 20:07:43 +0000
Subject: SPARC64: Modular floppy?
Message-Id: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: ultralinux@vger.kernel.org

As things stand today, floppy can't be modular (even though the
configuration allows it!) because drivers/block/floppy.c references stuff
in arch/sparc64/kernel/entry.S which isn't included if the floppy
isn't. But that same code references symbols in floppy.c, so it doesn't
help making it depend on floppy (modular or not).

So, either the dependencies have to get fixed so floppy can't be modular
for this architecture, or the relevant functions have to move from entry.S
to the module. Last looks like a mess, splattering .S for sparc64 into
drivers, or moving it to arch. Or is there some way of building a module
from pieces in different directories under architecture control?

Or this can be declared an endearing quirk of Linux on SPARC ;-)
-- 
Dr. Horst H. von Brand                   User #22616 counter.li.org
Departamento de Informatica                     Fono: +56 32 654431
Universidad Tecnica Federico Santa Maria              +56 32 654239
Casilla 110-V, Valparaiso, Chile                Fax:  +56 32 797513
