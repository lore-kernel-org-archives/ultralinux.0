From: Kevin Milans <kmilans@NeuroSystems.com>
Date: Tue, 11 Aug 1998 22:39:39 +0000
Subject: Re: [CALL FOR TESTERS] pre-release of silo 0.7.3
Message-Id: <marc-linux-ultrasparc-90287826304122@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90284411620274@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90284411620274@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

	I tested what I could from the pre-release.  My environment is a
sun4c running linux 2.1.115.

	The first problem was an undefined reference to S_ISLNK in
second/ufs.c, which is easily fixed by including <linux/stat.h> which
defines this macro, at least for 2.1.115.

	The second problem is a little more difficult, it seems that the
second/util program didn't like the files it was working with -- 

ld -N -Ttext 0x280000 -Bstatic -o second crt0.o decomp.o console.o
printf.o malloc.o jmp.o prom.o tree.o urem.o udiv.o stringops1.o bmark.o main.o
cmdline.o disk.o file.o misc.o cfg.o strtol.o ranges.o timer.o memory.o
ufs.o divdi3.o mul.o rem.o sdiv.o umul.o stringops2.o  -lext2fs mark.o
ld -N -Ttext 0x380000 -Bstatic -o second2 crt0.o decomp.o console.o
printf.o malloc.o jmp.o prom.o tree.o urem.o udiv.o stringops1.o bmark.o
main.o cmdline.o disk.o file.o misc.o cfg.o strtol.o ranges.o timer.o
memory.o ufs.o divdi3.o mul.o rem.o sdiv.o umul.o stringops2.o  -lext2fs
mark.o
nm second | grep -v '*ABS*' | sort > second.map
gcc  -o util util.c
util.c: In function `main':
util.c:69: warning: return type of `main' is not `int'
cp second second.tmp
cp second2 second2.tmp
strip second.tmp
strip second2.tmp
elftoaout -o second.image.tmp second.tmp
PT 0 Entry: Loadable to 0x280000[0x21864] from 0x60[0x13990] align 0x100
elftoaout -o second2.image.tmp second2.tmp
PT 0 Entry: Loadable to 0x380000[0x21864] from 0x60[0x13990] align 0x100
./util -z second.map second.image.tmp second2.image.tmp second.b second.b2
Distance between two changes larger than 64K 0 66337 11302
make: *** [second.b] Error 1
 
	I was confused, because 66337 - 11302 < 64K.  A quick glance at
util.c showed that the error message came from the save() function, line
50 (not 42, where a similar error message can be printed):

fprintf(stderr, "Distance between two changes larger than 64K %d %d %d\n", \
	type, curoff + j, lastv[type]);

I believe that the last argument should be lastv[type+1] as that value is
what is actually being compared in the if expression above the error
message. Upon making that change, util gives

Distance between two changes larger than 64K 0 66337 0 

as its error.  I was curious as to how far along util got and added
some debugging printf statements.  The first two calls to save() are
okay, the problem happens with the third call (line 115 in main()):

save (g, rodata_start - first_end, 0);

Any idea as to what could be happening here?  

Kevin Milans
