From: Ben Collins <bcollins@debian.org>
Date: Sun, 30 Sep 2001 18:06:10 +0000
Subject: Re: More sparc64-libc questions
Message-Id: <marc-linux-ultrasparc-100187330504680@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100187097332030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100187097332030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, Sep 30, 2001 at 01:20:50PM -0400, Sean Callanan wrote:
> 
> >Yes, it's known to work. Debian contains a gcc-3.0-sparc64 package along
> >with a libc6-sparc64. The tricky part is that gcc is hardcoded to use
> >/lib64/ld-linux.so.2. You should make a symlink from /lib64 to
> >/usr/local/sparc64-linux/lib for your setup to work, and then add /lib64
> >to /etc/ld.so.conf and rerun ldconfig.
> 
> I did what you suggested, adding /lib64 to /etc/ld.so.conf, and rerunning 
> ldconfig. But now the program segfaults.
> 
> % sparc64-linux-gcc -m64 -o hello hello.c
> % ./hello
> Segmentation fault
> 
> It doesn't dump core, either. (not that my 32-bit gdb would do much good)
> 
> By the way, how difficult would it be to use a file in /etc to determine 
> the 64-bit library location (such as, maybe /etc/ld64.so.conf)?

ldconfig is smart enought to handle 32-bit and 64-bit API's from the
same ld.so.cache. That's not the problem. I beleive you can use a
different ld.so.conf (maybe .64 extension? can't remember).

%cat hello.c
#include <stdio.h>

int main() { puts("Hello World!"); return 0; }
%gcc-3.0 -m64 hello.c
%./a.out
Hello World!
%file a.out
a.out: ELF 64-bit MSB executable, SPARC V9, version 1, dynamically linked (uses shared libs), not stripped
%ldd a.out
        libc.so.6 => /lib/64/libc.so.6 (0xfffff80000120000)
        /lib/64/ld-linux.so.2 => /lib/64/ld-linux.so.2 (0xfffff80000000000)
%gcc-3.0 -v
...
gcc version 3.0.2 20010908 (Debian prerelease)


Note, I am also using a subreg-byte patch so that fpu works correctly.
And yes, I setup Debian to use /lib/64 instead of /lib64, but that's
just my preference, and required patching gcc and glibc (glibc 2.2.4).

If you are using the latest glibc, then the segv occurs in
ld-linux.so.2 (try executing it directory, you'll see), and I haven't
had time to diagnose it yet.


Ben

-- 
 .----------====-=-===-=====-----------===------------=-=-----.
/                   Ben Collins    --    Debian GNU/Linux                  \
`  bcollins@debian.org  --  bcollins@openldap.org  --  bcollins@linux.com  '
 `---=====------====-------------=-=-----=-==-===-------=--=---'
