From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 16 Jul 1998 13:26:38 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531050@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Thu, 16 Jul 1998 15:12:05 +0200
   From: Sven Grundmann <grundema@uni-duesseldorf.de>

     Ok I understand that you can't help me with that rc5des
   client. But i downloaded the VIS SDK for usage of VIS in my own
   computations and read in the documentaion that  i need  a sun
   compiler version 4 or higher ! They have an inline expansion file
   in their SDK ( vis.il ) . I am not sure if i can use that with gcc
   ( cause i don't have that cc 4.x ) and i never used Assembler on a
   sun.

(side comment: this *.il inline assembler interface of sunpro is one
of the things I totally think they got wrong and which gcc has a much
superier interface, look at the syntax, it's just gross)

You are right, they will not work "as is" with gcc and would all need
to be rewritten.  It's all trivial, for example the first one you
showed would be something like:

extern __inline__ int vis_edge8(void *frs1, void *frs2)
{
	__asm__ __volatile__("edge8	%0,%2,%0"
			     : "=&r" (frs1)
			     : "0" (frs1), "r" (frs1));
	return (int) frs1;
}

in gcc...

And don't forget to tell gcc to pass -Av9a to the assembler.

Later,
David S. Miller
davem@dm.cobaltmicro.com
