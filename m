From: Sven Grundmann <grundema@uni-duesseldorf.de>
Date: Thu, 16 Jul 1998 12:23:00 +0000
Subject: VIS
Message-Id: <marc-linux-ultrasparc-90222358531047@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi !
I am computing RC5DES contest. I had a client on ultrasparc solaris
which was for times as fast as the  sparc
client. I heard it could have to do something with the VIS instruction
set which is implemented in the ultrasparc.

I downloaded a SDK from sun but that requires sun cc 4.x or higher . Is
it Possible to use that VIS instruction
set with gcc  ? ( Do you make use of that already ? ) . Is there a c
library for gcc ?  Does anybody know something about VIS ?


The RC5DES code is nearly as double as fast on a ultrasparc I 167 Mhz
workstation than an 300 MHz Pentium II
( with MMX enhanced client ) .

But it doesn't run on my ultralinux maschine
[grundman@hal7 rc5]$ ./rc5des
ld.so.1: ./rc5des: fatal: libpthread.so.1: can't open file: errno=2
Killed
[grundman@hal7 rc5]$

solaris libpthread is there .
solaris emulation module is loaded.


I know that it is no Ultralinux bug report but i hope somebody of you
knows something about VIS which
can helf me to enhance my Prgramms

Sven Grundmann

ps: The Ultra I are the fastest Prozessors in that DES contest with that
client i have found ( normally only as
fast as a Pentium 200 )
URL is :
http://www.distributed.net
