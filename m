From: David Miller <davem@twiddle.net>
Date: Thu, 25 Mar 1999 02:17:49 +0000
Subject: Re: Problems compiling 2.2.4 Ultrasparc kernel...
Message-Id: <marc-linux-ultrasparc-92232809912878@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92232769912646@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92232769912646@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Thu, 25 Mar 1999 02:01:30 +0000
   From: Shawn Hooton <shooton@cms.cendant.com>

   egcs -O2 -fomit-frame-pointer -funroll-loops -fno-strength-reduce  
   -DEXPORT_SYMTAB -c signal.c

It's using the wrong compiler.  Does "uname -a" output "sparc64" as
the cpu type?

Later,
David S. Miller
davem@redhat.com
