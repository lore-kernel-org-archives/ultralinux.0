From: Shawn Hooton <shooton@cms.cendant.com>
Date: Thu, 25 Mar 1999 02:43:48 +0000
Subject: Re: Problems compiling 2.2.4 Ultrasparc kernel...
Message-Id: <marc-linux-ultrasparc-92233005314042@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92232769912646@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92232769912646@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I want to apologize to everyone for being an idiot.
I figured that it should be using the sparc64-linux-gcc
compiler. I figured it was getting egcs from my $CC
so I unset all of my build vars, but I think the damage
had already propagated to the makefiles. Sorry.

FYI: uname -a="Linux {hostname} 2.2.0-pre4 #1 Tue Jan 5 17:08:15 CET
1999 sparc64 unknown"

I really appreciate the quick response!!!

David Miller wrote:
> 
>    Date:        Thu, 25 Mar 1999 02:01:30 +0000
>    From: Shawn Hooton <shooton@cms.cendant.com>
> 
>    egcs -O2 -fomit-frame-pointer -funroll-loops -fno-strength-reduce
>    -DEXPORT_SYMTAB -c signal.c
> 
> It's using the wrong compiler.  Does "uname -a" output "sparc64" as
> the cpu type?
> 
> Later,
> David S. Miller
> davem@redhat.com
