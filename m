From: Alejandro Aguilar Sierra <aguilar@modelos1.atmosfcu.unam.mx>
Date: Wed, 13 Jan 1999 07:23:59 +0000
Subject: Compiling the kernel in ultralinux
Message-Id: <marc-linux-ultrasparc-91621280925272@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I have just installed 1.1.19 (Jan11) in a ultra1. I downloaded the kernel
source and after config I followed the usual steps: make dep; make clean,
but when I do "make zImage" I just got: 

  # make zImage
  make: *** No rule to make target `zImage'.  Stop.

I have compiled exactly the same kernel (2.2.0-pre6) in a i386
without any problem.

I know this sounds stupid, but... did I miss to install any package? Any
hint? 

Thanks.

Alejandro Aguilar Sierra
