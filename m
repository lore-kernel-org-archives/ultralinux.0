From: Sean Upton <seanupton@yahoo.com>
Date: Thu, 30 Nov 2000 22:56:49 +0000
Subject: glibc 2.1.3 Build - locale/C-ctype.c
MIME-Version: 1
Content-Type: multipart/mixed; boundary="0-1605894428-975625009=:25055"
Message-Id: <marc-linux-ultrasparc-97562491722740@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

--0-1605894428-975625009=:25055
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

2 quick questions... 

I have sort of naively stumbled on to a problem and
solution in building glibc 2.1.3 on sparc.  Buillding
a custom distro, and I was trying to build glibc 2.1.3
on an Ultra 10 in sparc32 mode, and had a problems
building it with gcc 2.95.3 and 2.95.2, because
compile failed due to parse error in locale/C-ctype.c
that seemsed sort of weird.  I believe this issue was
a syntax problem that prevented compilation on
big-endian arcitectures (look at the code, you'll see
what I mean).  I added a comma to line 377 and tried
rebuilding, with 100% success.  diff output is
attached.  Has anyone else seen this, and would
patching this file in this manner cause problems for
little-endian boxes?  

2.1.3 deals with endian issues with preprocessor
directives, from looking at the code in glibc 2.2, it
deals with the endian issues differently, so this
should be a non-issue with 2.2.  Has anyone had decent
luck using glibc running on sparc/linux?

C-ctype.c:379: parse error before `{'
C-ctype.c:382: parse error before `}'
make[2]: ***
[/lfs/usr/src/glibc-build/locale/C-ctype.o] Error 1

Thanks in advance,
Sean

__________________________________________________
Do You Yahoo!?
Yahoo! Shopping - Thousands of Stores. Millions of Products.
http://shopping.yahoo.com/
--0-1605894428-975625009=:25055
Content-Type: application/x-unknown; name="sparc.diff"
Content-Transfer-Encoding: base64
Content-Description: sparc.diff
Content-Disposition: attachment; filename="sparc.diff"

Mzc3YzM3Nwo8ICAgICB7IHN0cmluZzogKGNvbnN0IGNoYXIgKikgKF9ubF9D
X0xDX0NUWVBFX3RvbG93ZXIgKyAxMjgpIH0KLS0tCj4gICAgIHsgc3RyaW5n
OiAoY29uc3QgY2hhciAqKSAoX25sX0NfTENfQ1RZUEVfdG9sb3dlciArIDEy
OCkgfSwK

--0-1605894428-975625009=:25055--
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
