From: Ben Collins <bcollins@debian.org>
Date: Sat, 12 Jan 2002 04:42:46 +0000
Subject: Re: XFree86 4.1.0 and PCI patch
Message-Id: <marc-linux-ultrasparc-101081058408673@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101080710404970@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101080710404970@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Jan 11, 2002 at 10:43:47PM -0500, Sean Callanan wrote:
> Dear mailing list:
> 
> In short, I have compiled XFree86 4.1.0 on a Sun Ultra 5 with the ATI
> Mach64 video card. Compilation was relatively smooth - should I give some
> patches that fix sparc compilation with GCC 3.0.3?
> 
> My question is: the server gives the error
> --
> Could not mmap PCI memory
> --
> I know this is a known issue because there are several other messages
> about this on Google, that's why I don't provide more complete server
> error logs.
> 
> There is a patch mentioned for this, from David S. Miller, but I can't
> track it down. Should I apply the massive debian patch (4.1.0-4.1.0.11) or
> is there a smaller patch around just for sparc?

Why not just install the Debian packages? If you want to build it, there
is a patch in the Debian sources just for this issue.

-- 
 .----------====-=-===-=====-----------===------------=-=-----.
/                   Ben Collins    --    Debian GNU/Linux                  \
`  bcollins@debian.org  --  bcollins@openldap.org  --  bcollins@linux.com  '
 `---=====------====-------------=-=-----=-==-===-------=--=---'
