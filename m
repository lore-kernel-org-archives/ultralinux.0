From: Ward Deng <wdeng@KachinaTech.COM>
Date: Sun, 26 Jul 1998 04:00:05 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531084@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hardly worth investing time or $$$ in a communication network when you're
> only spending 15% of the time there! If the NPB aren't representative,
> well, that's another problem  ... 

This is one side of the view. However, because of the heterogeniety of the
memory allocation, you simply leave the burden to programmers. There are
some algorithms are invented, which is good news. Instead of letting
programmers learn new computer architectures one by one before they know
how to write their programs :-).

I just try to remind people that the current status of Beowulf type system
is not panacea for the majority of computational challenges. This is why
CM-5 users and Cray users are more productive than IBM SP2 users. We still
have long way to go. Also most bandwidth tolerent algorithms have not been
invented (it also take time and $$$) if ever in computations a little bit
more sophisticated than Ax=b or FFT problems. Remember some algorithms
require users to make the dimension of their matrix A dividable by the
number of processors ;-(.

> 
> I'm more and more convinced that inter-processor communication is no 
> longer a first order issue. Focusing on memory system efficiency 
> (effective use of the cache and memory BW) will get you much more bang for
> your buck. Even in the parallel case, I would spend money on huge L2
> caches and memory bandwidth over processor interconnect. 
>

I believe someone feel that way but I have not convinced yet since starting
working on the first generation of IBM SP system. I totally agree that
high system throughput and SMP is very important and welcome. However, lower
lantency inter-processor communication is also important. It is not that
binary.

> My humble $0.02 worth... 
> 

Me too.

--ward
