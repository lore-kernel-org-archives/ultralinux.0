From: Sean Callanan <sc843@bard.edu>
Date: Sun, 30 Sep 2001 17:20:50 +0000
Subject: More sparc64-libc questions
Message-Id: <marc-linux-ultrasparc-100187097332030@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


>Yes, it's known to work. Debian contains a gcc-3.0-sparc64 package along
>with a libc6-sparc64. The tricky part is that gcc is hardcoded to use
>/lib64/ld-linux.so.2. You should make a symlink from /lib64 to
>/usr/local/sparc64-linux/lib for your setup to work, and then add /lib64
>to /etc/ld.so.conf and rerun ldconfig.

I did what you suggested, adding /lib64 to /etc/ld.so.conf, and rerunning 
ldconfig. But now the program segfaults.

% sparc64-linux-gcc -m64 -o hello hello.c
% ./hello
Segmentation fault

It doesn't dump core, either. (not that my 32-bit gdb would do much good)

By the way, how difficult would it be to use a file in /etc to determine 
the 64-bit library location (such as, maybe /etc/ld64.so.conf)?

Sincerely,

Sean Callanan 

