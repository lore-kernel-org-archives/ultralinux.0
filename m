From: Ben Collins <bcollins@debian.org>
Date: Mon, 01 Oct 2001 01:52:10 +0000
Subject: Re: More sparc64-libc questions
Message-Id: <marc-linux-ultrasparc-100190113922850@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100187097332030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100187097332030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, Sep 30, 2001 at 09:36:07PM -0400, sc843@bard.edu wrote:
> Thanks Ben!
> 
> Indeed it _is_ ld-linux.so.2 which segfaults (I'm using a recent CVS.)
> 
> I'm seriously considering creating a pure 64-bit Sparc distribution of Linux. 
> Everyting that can be would be native 64-bit (init, shells, X, etc...). Having 
> the compiler working is a good thing, and I'll test glibc 2.2.4 and see whether 
> that fixes my segfault problem.
> 
> I understand that this will provide only marginal performance benefits, and 
> that Debian has a solid distro out with 64-bit support, but I'm doing this as 
> much for the adventure as for the performance benefits. How is a distribution 
> usually begun? I'd take the next release of GCC (3.0.2) and the latest release 
> of libc.

Actually, it would create a performance hit for most things. From what I
understand the addressing causes performance issues, and is only really
needed for applications that need to address > 4gigs of memory (or other
large accesses), like databases, etc.

I've gone through a lot with this for Debian. Final decision I made was
to not have a native 64-bit distribution, and this was based on input
from Dave and Jakub. That's why I've only provided a 64-bit compiler and
base libraries; so people can compile what they need as 64-bit.

Read through some of the comments in gcc/config/sparc/ about the memory
addressing models used. Even the kernel is slow when compiled with full
64-bit addressing, which is why it is compiled with the medlow model.


Ben


-- 
 .----------====-=-===-=====-----------===------------=-=-----.
/                   Ben Collins    --    Debian GNU/Linux                  \
`  bcollins@debian.org  --  bcollins@openldap.org  --  bcollins@linux.com  '
 `---=====------====-------------=-=-----=-==-===-------=--=---'
