From: Matthew Hawkins <matt@mail.goldweb.com.au>
Date: Mon, 14 Dec 1998 06:11:54 +0000
Subject: lwp emulation
Message-Id: <marc-linux-ultrasparc-91361605107558@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi everyone,

To cut a long story short, we got a new UltraSPARC, installed UP-1.1, found
out that our primary application won't run under emulation as lwp isn't
implemented (yet), so now we're considering doing the port in our (ha!) spare
time (the mentality goes something like "I'll do anything to finally rid this
machine of Solaris" ;)

At Jakub's suggestion we are going the way of reimplementing the Solaris
threads libraries (well, the API) to do things the Linux (POSIX?) way.

I just wanted some feedback as to what others felt about this little project
and any suggestions/ideas you might have (all of us are newbie sparc people
from the dark side (Intel;)) - oh, and is anybody else genuinely interested in
having this support?

Thanks,

-- 
Matt                                                  http://www.topic.com.au/
