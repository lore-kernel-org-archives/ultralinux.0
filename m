From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Thu, 29 Oct 1998 09:02:15 +0000
Subject: Re: Tcl/Tk under ultrapenguin-1.0.9
Message-Id: <marc-linux-ultrasparc-90965582808136@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90958348205501@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90958348205501@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Upgrade to the latest kernel...

Ok, now configure works well thanks.

I also solved the pb of Tk: wish cannot load shared object made of C++
code because the loaded shared library uses symbols (such as
`__find_first_exception_table_match') which are not used by the wish
program, C code made. I did not find how to force the definition of
`__find_first_exception_table_match' (defined in libgcc.a) during the
link stage of wish except linking it with libstdc++.so. 

I wonder if it is normal that you have to re-link the program before
using it with a C++ shared library, and if the `-export-dynamic' ld
option is working correctly...

Thierry Lafage.
