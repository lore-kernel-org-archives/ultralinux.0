From: Judith Lebzelter <judith@osdl.org>
Date: Wed, 04 Oct 2006 23:44:37 +0000
Subject: sparc64 cross-compile errors in 2.6.18-mm3
Message-Id: <20061004234437.GJ665@shell0.pdx.osdl.net>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I run cross-compiles on various architectures and the sparc64 which worked 
well for 2.6.18-mm2, has a major error for 2.6.18-mm3 kernel.  Almost
nothing compiles because they all include 'include/linux/compat.h', which
has this error:

include/linux/compat.h:231: error: parse error before '*' token
include/linux/compat.h:231: warning: function declaration isn't a prototype
make[1]: [init/main.o] Error 1 (ignored)

Do I need to change a configuration option or something?

Thanks,
Judith Lebzelter
OSDL

