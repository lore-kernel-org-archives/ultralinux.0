From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Mon, 20 Jul 1998 08:32:42 +0000
Subject: When is kernel back working ?
Message-Id: <marc-linux-ultrasparc-90222358531062@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

hello, still running 2.1.106 here 


cause console driver erros 
i was wondering when can i retry compiling a working kernel ?
(tried just a few minutes ago 2.1.109)

also: i don't need a console (always use telnetis it possible then to
compile a kernel ?


P.s. this error i get :


sparc64-linux-gcc -D__KERNEL__ -I/usr/src/linux-2.1.109/include -Wall
-Wstrict-prototypes -O2 -fomit-frame-pointer -pipe -mno-fpu
-mtune=ultrasparc -mmedlow -ffixed-g4 -fcall-used-g5 -fcall-used-g7
-Wno-sign-compare   -c -o leo.o leo.c
leo.c: In function `leo_penguin':
leo.c:700: `suncons_ops' undeclared (first use this function)
leo.c:700: (Each undeclared identifier is reported only once
leo.c:700: for each function it appears in.)
make[4]: *** [leo.o] Error 1
make[4]: Leaving directory `/usr/src/linux-2.1.109/drivers/sbus/char'
make[3]: *** [first_rule] Error 2
make[3]: Leaving directory `/usr/src/linux-2.1.109/drivers/sbus/char'
make[2]: *** [sub_dirs] Error 2
make[2]: Leaving directory `/usr/src/linux-2.1.109/drivers/sbus'
make[1]: *** [sub_dirs] Error 2
make[1]: Leaving directory `/usr/src/linux-2.1.109/drivers'
make: *** [linuxsubdirs] Error 2
