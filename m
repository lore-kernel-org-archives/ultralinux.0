From: Sean Callanan <sc843@bard.edu>
Date: Tue, 13 Nov 2001 04:39:10 +0000
Subject: libstdc++ bus errors
Message-Id: <marc-linux-ultrasparc-100562646118090@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

(Sorry if you've already seen this; I'm having SMTP server problems)

Dear mailing list:

I am currently rebuilding my system from scratch (using the instructions at 
www.linuxfromscratch.org) with GCC 3.0.2 and glibc 2.2.4.
I have simply compiled GCC 3.0.2 for sparc-linux (32-bit) with dynamic 
linking against the new libc. However, even a test program:
--
#include <iostream.h>

void main()
{
	cout << "Hello C++!\n";
	exit(0);
}
--
has a bus error. Are there known issues with sparc and libstdc++ 3.0.2? 
(Incidentally, I try to run the library itself, and get a segmentation 
fault, but I suspect that isn't such a big issue since the c++ library on 
my original SuSE install does the exact same thing.

Incidentally, I have the C++ library for 32-bit in /usr/lib, and the C++ 
library for 64-bit in /usr/lib64. There should be no issues with libs 
conflicting.

Sincerely,
Sean Callanan 

