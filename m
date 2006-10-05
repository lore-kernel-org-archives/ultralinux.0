From: Judith Lebzelter <judith@osdl.org>
Date: Thu, 05 Oct 2006 00:12:46 +0000
Subject: Re: sparc64 cross-compile errors in 2.6.18-mm3
Message-Id: <20061005001246.GK665@shell0.pdx.osdl.net>
List-Id: <ultralinux.vger.kernel.org>
References: <20061004234437.GJ665@shell0.pdx.osdl.net>
In-Reply-To: <20061004234437.GJ665@shell0.pdx.osdl.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Oct 04, 2006 at 04:47:31PM -0700, David Miller wrote:
> From: Judith Lebzelter <judith@osdl.org>
> Date: Wed, 4 Oct 2006 16:44:37 -0700
> 
> > I run cross-compiles on various architectures and the sparc64 which worked 
> > well for 2.6.18-mm2, has a major error for 2.6.18-mm3 kernel.  Almost
> > nothing compiles because they all include 'include/linux/compat.h', which
> > has this error:
> > 
> > include/linux/compat.h:231: error: parse error before '*' token
> > include/linux/compat.h:231: warning: function declaration isn't a prototype
> > make[1]: [init/main.o] Error 1 (ignored)
> > 
> > Do I need to change a configuration option or something?
> 
> Fixed in Linus's current tree for at least 2 days.

I won't worry about it then.:)

Thanks,
Judith
> 
> I should remove Jakub, Eddie, and Anton from the MAINTAINERS
> entry, they haven't been active in sparc maintainence for
> years.
