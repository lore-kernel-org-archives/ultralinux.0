From: DURANTEZ Marc <durantez@is.s.u-tokyo.ac.jp>
Date: Mon, 07 Sep 1998 04:01:40 +0000
Subject: Cannot compile with /usr/local/bin/sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-90515862113550@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have just installed the distribution 1.0.9 of
ultrapenguin on my ultra2 and I wanted
to compile a kind of helloworld 64 bits. But I get
an error with sparc64-linux-gcc:

/usr/local/bin/sparc64-linux-gcc -o test64
test64.c
/usr/local/sparc64-linux/bin/ld: cannot open
crt1.o: No such file or directory.

I could compile it with the standard gcc (the one
in the path) but then the output
of test64 is that long and pointers are 4bytes
long.

How should I do to compile programs using the
64bits capabilities of the Ultra2?
Might be I missed an important HOWTO or info page.

I would also like to subscribe to the ultralinux
mailing list and receive information
about any source of information on ultrapenguin as
FAQs, HOWTOs, etc...

Please reply directly as I am not in the mailing
list!

Thanks

Marc Durantez
durantez@is.s.u-tokyo.ac.jp
