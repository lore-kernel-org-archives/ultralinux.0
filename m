From: Eiki Ito <eiki@hal.com>
Date: Sun, 10 May 1998 02:20:38 +0000
Subject: compiling libc5 on UP1.0
Message-Id: <marc-linux-ultrasparc-90222356530996@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

I joined this mailing list recently.  Could someone give me an advice
on how to compile libc?  I'm using Ultrapenguin-1.0 (not 1.0.9).
Eventually I'll move on to 1.0.9, but for now I have to use 1.0 
for a while.  And I have to *compile* it, not just use precompiled one.

o I'm using libc-5.3.12-19.src.rpm found in ultrapenguin-1.0/updates/SRPMS.
 Is this the right package?

o include/asm should point to asm-sparc64, not asm-sparc, correct?

o If I do 'configure' on UP1.0, it says 
  "Build sparc-linux library for sparc64 running linux"
  I don't need to change sparc64 to sparc, do I?

o (**** this is the main question ****)
  Okay, now, when I do 'make depend' (on UP1.0), I get this:

making depend in sparc64
make: Entering an unknown directory
make: *** sparc64: No such file or directory.  Stop.
make: Leaving an unknown directory
make[2]: *** [depend] Error 2
make[2]: Leaving directory `/home/eiki/src/libc-5.3.12-19/libc/sysdeps/linux'

It seems we need sysdeps/linux/sparc64.  Where is it?  sparc/ does not
seem to be an alternative because it needs such things as <psr.h>.

o I boldly went on to 'make' after the failing 'make depend':)  Then this:

getgrgid.c:37: conflicting types for `getgrgid'
.../../include/grp.h:78: previous declaration of `getgrgid'
.../../include/linux/socket.h:89: warning: `cmsg_nxthdr' defined but not used
make[1]: *** [../elfstatic/libc/getgrgid.o] Error 1
make[1]: Leaving directory `/home/eiki/src/libc-5.3.12-19/libc/grp'
make: *** [lib] Error 2

I dunno, apparently I'm missing an important patch or something.

o Oh, BTW, I could compile /sbin/init (statically) on redhat4.2, but
 this one is not useable on UP1.0, is it?  I tried it, but after 
 execve("/sbin/init",..) in init() (in init/main.c) it was stuck.
 Looks like argv/envp was not correctly passed to the user process.

####

Now I'm totally confused with this 32 vs 64 bit stuff...   Is it any
better on 1.0.9?

What I'm trying to do is to port Ultrapenguin to another V9 processor,
our SPARC64-III.  Architecture differences with Ultra should be minimal,
but this is much harder than I thought...  

Thanks,

-------------------------------------
Eiki Ito

HAL Computer Systems, Inc.
1315 Dell Avenue, Campbell, CA95008, USA
e-mail: eiki@hal.com
