From: Thierry Lafage <lafage@irisa.fr>
Date: Tue, 23 Mar 1999 09:11:29 +0000
Subject: Re: Header files conflicts
Message-Id: <marc-linux-ultrasparc-92218055401139@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92212191626693@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92212191626693@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hello,
> 
> The header files in /usr/include/linux seriously conflict with some
> from glibc-devel-2.0.7-29 in my ultrasparc-I box running UP-1.1.9 and
> kernel 2.2.4.
> 
> Here is a sample example (using <sys/types.h>):
[...]
> What may have missed?
> 
> Thierry Lafage.

Here is another example (trying to include <linux/types.h>):

In file included from /usr/include/_G_config.h:9,
                 from /usr/include/libio.h:31,
                 from /usr/include/stdio.h:29,
                 from emul_error.h:6,
                 from traps-handle.h:30,
                 from traps-handle.c:7:
/usr/include/gnu/types.h:75: warning: `__NFDBITS' redefined
/usr/include/linux/posix_types.h:30: warning: this is the location of the previous definition
/usr/include/gnu/types.h:77: warning: `__FDMASK' redefined
/usr/include/linux/posix_types.h:42: warning: this is the location of the previous definition
In file included from /usr/include/stdlib.h:210,
                 from trace.h:12,
                 from traps-handle.h:32,
                 from traps-handle.c:7:
/usr/include/sys/types.h:117: warning: `__BIT_TYPES_DEFINED__' redefined
/usr/include/linux/types.h:73: warning: this is the location of the previous definition
In file included from /usr/include/stdlib.h:210,
                 from trace.h:12,
                 from traps-handle.h:32,
                 from traps-handle.c:7:
/usr/include/sys/types.h:33: warning: redefinition of `u_char'
/usr/include/linux/types.h:61: warning: `u_char' previously declared here
/usr/include/sys/types.h:34: warning: redefinition of `u_short'
/usr/include/linux/types.h:62: warning: `u_short' previously declared here
/usr/include/sys/types.h:35: warning: redefinition of `u_int'
[...]

Any idea?

Thierry Lafage.
