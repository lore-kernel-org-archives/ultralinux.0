From: Edwin Kremer <edwin@cs.uu.nl>
Date: Tue, 27 Apr 1999 14:14:09 +0000
Subject: Re: Mach64 problems in UltraPenguin 1.1.9
Message-Id: <marc-linux-ultrasparc-92522264407826@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92522154306389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92522154306389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, Apr 27, 1999 at 09:58:08AM -0400, Steve Dunham wrote:

  : > XFree86-3.3.3.1-5	further FFB fixes, Mach64 fixes (requires the above
  : > 			kernel), Leo/ZX support (including acceleration).
  : 
  : Ther kernel is the latest CVS kernel (numbered 2.2.7).  The card is
  : 2MB, and I am running the server in 16bit mode. The colors come out
  : very wrong, and the cursor is mangled.  (In 8-bit mode, the colors are
  : correct, but the cursor is still mangled. - and, yes, the cursor does
  : look like it has an endian problem.)

I've installed using the Apr 14 tftpboot.img and the same XFree86 on a
brand new Ultra 5 that comes with PGX24 graphics (that is Mach64 but
with 4MB memory) and I'm having similar problems (kernel 2.2.5).

8-bit color is fine, but at 16 or 24 everything looks very purple and
the mouse pointer must be artwork :-)

Until I saw your message, I figured it had something to do with the
new PGX24 graphics.


Best regards,

-- 
Edwin H. Kremer, senior systems- and network administrator.   <edwin@cs.uu.nl>
Dept. of Computer Science,  Utrecht University, The Netherlands  [WHOIS: ehk3]
-------------------- http://www.cs.uu.nl/people/edwin/ -----------------------
