From: Derrick J Brashear <shadow@dementia.org>
Date: Fri, 13 Nov 1998 19:55:53 +0000
Subject: anyone using nested modules?
Message-Id: <marc-linux-ultrasparc-91099548828878@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

So on my ultrapenguin 1.1 system (ultra 1/170, 2.1.126) I was having
problems where attempting to load cs4231.o after audio.o caused an
initialization failure, and I assumed it was some problem with my module.
I tried "modprobe ppp_deflate" with the distributed modules, and same
thing:
init_module: found dependancy that is (no longer?) a module.
/lib/modules/2.1.126/net/ppp.o: init_module: Invalid argument

So it's not me. Are there any other nested module combos? Do any work
correctly?

-D
