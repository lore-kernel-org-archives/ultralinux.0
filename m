From: "Randy.Dunlap" <rddunlap@osdl.org>
Date: Tue, 01 Mar 2005 19:49:25 +0000
Subject: Re: SPARC64: Modular floppy?
Message-Id: <4224C745.4090605@osdl.org>
List-Id: <ultralinux.vger.kernel.org>
References: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
In-Reply-To: <200502282007.j1SK7hgE031074@laptop11.inf.utfsm.cl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sam@ravnborg.org, "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org
Cc: Horst von Brand <vonbrand@inf.utfsm.cl>

(Sam, your From: From: Sam Ravnborg <>  really trips thunderbird.)

Sam wrote:
Documentation/kbuild/makefiles.txt is a good start.
For specific questions I can help out.

For this specific case the problem seems to me that you in the ppc64
case want to include floppy-ppc64.S in the build for the PPC64 case.
So something as simple as:

1) rename floppy.c to floppy-core.c

2) Change Makefile to look like:
floppy-y        := floppy-core.o
floppy-$(PPC64) += floppy-ppc64.o
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Minor detail, This is for sparc64 (see Subject).

I also see that arch/arm[26]/lib/ has special handling for
floppydma.S, so there'a a model to consider also.

-- 
~Randy
