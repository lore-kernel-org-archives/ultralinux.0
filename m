From: Thierry Lafage <lafage@irisa.fr>
Date: Mon, 22 Mar 1999 16:43:56 +0000
Subject: Header files conflicts
Message-Id: <marc-linux-ultrasparc-92212191626693@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

The header files in /usr/include/linux seriously conflict with some
from glibc-devel-2.0.7-29 in my ultrasparc-I box running UP-1.1.9 and
kernel 2.2.4.

Here is a sample example (using <sys/types.h>):

[thierry@paranormale sparc]$ make agent.o
gcc -g -O3 -Wall -I. -I../../../misc-include -Wa,-Av9a -DLINUX -c agent.c -o agent.o
In file included from /usr/include/sys/types.h:30,
                 from md.h:10,
                 from agent.h:11,
                 from agent.c:16:
/usr/include/gnu/types.h:75: warning: `__NFDBITS' redefined
/usr/include/linux/posix_types.h:30: warning: this is the location of the previous definition
/usr/include/gnu/types.h:77: warning: `__FDMASK' redefined
/usr/include/linux/posix_types.h:42: warning: this is the location of the previous definition
[...]
/usr/include/sys/types.h:110: warning: redefinition of `u_int64_t'
/usr/include/linux/types.h:90: warning: `u_int64_t' previously declared here
In file included from /usr/include/sys/types.h:126,
                 from md.h:10,
                 from agent.h:11,
                 from agent.c:16:
/usr/include/sys/select.h:48: conflicting types for `fd_set'
/usr/include/linux/types.h:9: previous declaration of `fd_set'
make: *** [agent.o] Error 1
[thierry@paranormale sparc]$

I have seen similar conflicts when trying to compile amd from
am-utils-6.0a16-4.src.rpm.

What may have missed?

Thierry Lafage.
