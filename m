From: Andreas Jaeger <aj@suse.de>
Date: Fri, 01 Dec 2000 08:24:02 +0000
Subject: Re: glibc 2.1.3 Build - locale/C-ctype.c
Message-Id: <marc-linux-ultrasparc-97566038823150@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>>>>> Sean Upton writes:

 > 2 quick questions... 
 > I have sort of naively stumbled on to a problem and
 > solution in building glibc 2.1.3 on sparc.  Buillding
 > a custom distro, and I was trying to build glibc 2.1.3
 > on an Ultra 10 in sparc32 mode, and had a problems
 > building it with gcc 2.95.3 and 2.95.2, because
 > compile failed due to parse error in locale/C-ctype.c
 > that seemsed sort of weird.  I believe this issue was
 > a syntax problem that prevented compilation on
 > big-endian arcitectures (look at the code, you'll see
 > what I mean).  I added a comma to line 377 and tried
 > rebuilding, with 100% success.  diff output is
 > attached.  Has anyone else seen this, and would
 > patching this file in this manner cause problems for
 > little-endian boxes?  

 > 2.1.3 deals with endian issues with preprocessor
 > directives, from looking at the code in glibc 2.2, it
 > deals with the endian issues differently, so this
 > should be a non-issue with 2.2.  Has anyone had decent
 > luck using glibc running on sparc/linux?

 > C-ctype.c:379: parse error before `{'
 > C-ctype.c:382: parse error before `}'
 > make[2]: ***
 > [/lfs/usr/src/glibc-build/locale/C-ctype.o] Error 1

Check the CVS archive via http://sources.redhat.com/glibc for this
patch to the 2.1 branch:

2000-03-07  H.J. Lu  <hjl@gnu.org>

	* locale/C-ctype.c (_nl_C_LC_CTYPE): Fix the initializer order
	for _NL_CTYPE_TOXXXER32_EX.

Andreas
-- 
 Andreas Jaeger
  SuSE Labs aj@suse.de
   private aj@arthur.inka.de
    http://www.suse.de/~aj
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
