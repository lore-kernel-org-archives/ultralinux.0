From: Ben Collins <bcollins@debian.org>
Date: Wed, 21 Feb 2001 18:05:41 +0000
Subject: Re: Solaris binaries under Linux
Message-Id: <marc-linux-ultrasparc-98277906522998@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98277748617383@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98277748617383@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Feb 21, 2001 at 05:44:12PM +0000, lars.johansson@ic.ac.uk wrote:
> Hi everyone!
> 
> I have been trying to get Solaris binaries to run on my SPARCclassic under
> Debian Linux.
> I have recompiled the kernel (2.2.18pre21) with built in support fot this.
> But how do I run them? My shell just tells me there is "no such file or
> directory" when i try to run them from a command line!

It's looking for the dynamic linker. You need to copy the /lib/ld.so
from the Solaris box, and any other libraries (libc.so.2, atleast) to
the local system aswell.

Ben

-- 
 -----------====-=-===-=====-----------===------------=-=------
/  Ben Collins  --  ...on that fantastic voyage...  --  Debian GNU/Linux   \
`  bcollins@debian.org  --  bcollins@openldap.org  --  bcollins@linux.com  '
 `---=====------====-------------=-=-----=-==-===-------=--=---'
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
