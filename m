From: Joshua Uziel <uzi@uzix.org>
Date: Fri, 02 Mar 2001 13:19:36 +0000
Subject: Re: where is ultra linux going?
Message-Id: <marc-linux-ultrasparc-98353928632005@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98345984016489@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98345984016489@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

* Martin A. Marques <martin@math.unl.edu.ar> [010302 04:16]:
> Yes, but it seems as the other platforms are having lots of more attention, 
> especially due to the fact that SUN isn't giving much help, because they 
> support there Solaris operating system.

Well, honestly, who can blame Sun?  Things are going so well that they
don't seem to feel that they should do anything.  Actually, I take that
back... some people within Sun see the value and are cooperating with
the SPARC/Linux developers... some examples:

* Machines are loaned to linux distributors for working on distributions
  as well as showing SPARC/Linux at tradeshows.  Most (if not all)
  SPARCs at LWENY recently were owned by Sun.  This included the one in
  the SuSE booth, the one in the Slackware/BSDI booth, and the one in
  the Debian booth.  Most of the work put into Slackware and Debian for
  SPARC are built on machines loaned by Sun.

* Sun Microelectronics for a while involved DaveM in working to improve
  Linux support for the AX motherboards.

* I'm being loaned an AX1105-500 for the purpose of working on support
  for it and the new Sun Blade 100 (which is very similar).

Most of the other platforms have a Unix variant that is dead or at least
on it's way... Solaris still seems to be quite healthy.

> With respect of the distros, yes, we have just installed SUSE on an ultra5, 
> and I have been looking at the Debian distribution. But are they fully 64bit? 
> Have all the aplications been compiled for 64 bit SPARC? I know that this 
> isn't the case of Debian, and I'm starting to think that the solution is to 
> stick with Solaris or change the architecture (alpha maybe).

Speaking with Ben Collins (Debian) and Thorsten Kukuk (SuSE), they've
both played with 64-bit userspace.  It seems that glibc is more or less
ready, but the compiler (eventually gcc 3.0) still needs work.  Using
Jakub Jelinek's hacked compiler, though, you can now have a 64-bit
userspace on SPARC/Linux, but it's more or less experimental.  In other
words, a 64-bit userland is "coming soon", but not here yet.  Besides,
for the most part, a 64-bit userspace isn't all that needed.  Even
Solaris ships with mostly 32-bit applications, and only 64-bit when it
really counts.

> It's all IMHO.

Of course. :)

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
