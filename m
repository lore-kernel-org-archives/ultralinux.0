From: Steve Dunham <dunham@cse.msu.edu>
Date: Tue, 27 Apr 1999 13:58:08 +0000
Subject: Mach64 problems in UltraPenguin 1.1.9
Message-Id: <marc-linux-ultrasparc-92522154306389@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz> writes:

> Hi!
> 
> Updates in UP1.1.9:

> XFree86-3.3.3.1-5	further FFB fixes, Mach64 fixes (requires the above
> 			kernel), Leo/ZX support (including acceleration).

The Mach64 X server is broken (I first tried applying your patches to
the Debian server, and then tried running your binary with the same results.)

Ther kernel is the latest CVS kernel (numbered 2.2.7).  The card is
2MB, and I am running the server in 16bit mode. The colors come out
very wrong, and the cursor is mangled.  (In 8-bit mode, the colors are
correct, but the cursor is still mangled. - and, yes, the cursor does
look like it has an endian problem.)

Any ideas?


Steve
dunham@cse.msu.edu
