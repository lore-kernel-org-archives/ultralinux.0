From: Marc Stuermer <sam@swin.baynet.de>
Date: Fri, 07 Aug 1998 20:58:29 +0000
Subject: Trying to compile glibc on UP 1.0.9 - which version?
Message-Id: <marc-linux-ultrasparc-90254366931623@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello out there, 

I am running Ultrapenguin 1.0.9 on an Ultrasparc 140. 

I have compiled egcs-1.0.3a successfully, it is now the main compiler. 

I am trying to get Exim 2.02 to work, it compiles flawlessly, but has
problems with the function getsockopt(), therefore I would have to comment
some parts of code out and loosing some functions. 

So my question is: which newer version of glibc is known to compile under
UP 1.0.9 with Kernel 2.1.107? glibc-2.0.7pre5 or glibc-2.0.95? make
version is 3.77, so it has not the bugs 3.76 or 3.76.1 has as mentioned in
the glibc FAQ.

Are there any patches needed? If so, where can I get them? Or are there
any binary distributions of glibc for UltraLinux out there? 

Thanks in advance, 
-- 
-+= Marc Stuermer -=- http://www.schweinfurt.franken.de/~sam =+-
