From: Rich Martin <rmartin@CS.Berkeley.EDU>
Date: Sun, 26 Jul 1998 00:45:53 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531079@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


I'm not sure this dicussion belongs on this list, but I'll provide an
alternate opinion to liven the debate. 

> It has been hard to communicate computer scientists (:-) since most of them
> do not understand what PDE stands for. ;-) To put it in short, the difficulty

Yup! All we get from the scientists is something like "please solve my 
Ax=b fast. Oh yea, I have a some funny structure in my A and b too". 

> numerical problems are not in that category. Searching for low-latency,
> high-throughput inter-processor communication should be still listed high
> on our agenda. At least this is my view.

Actually, anything that can be expressed in terms of large linear
algebra operations is a good candidate for a Beowulf style system. 
There has been endless work on MPPs and recently, clusters in this area.
Now there are plenty of good latency tolerating algorithms for most 
common operations. 

Dissecting the NAS Parallel Benchmarks on our cluster has convinced me that
these codes can run over a high bandwidth TCP just fine. On our 64 node
UltraSparc/Myrinet cluster, most of the NPB codes spent 5%-15% of the
time in communication. FT (a 3D FFT), the program that stresses the 
network the most, is just a bandwidth hog (high bandwidth alone is not an
interesting CS problem). FT, like all the other NPB codes, can tolerate 
huge software overheads and network latencies. 

Hardly worth investing time or $$$ in a communication network when you're
only spending 15% of the time there! If the NPB aren't representative,
well, that's another problem  ... 

I'm more and more convinced that inter-processor communication is no 
longer a first order issue. Focusing on memory system efficiency 
(effective use of the cache and memory BW) will get you much more bang for
your buck. Even in the parallel case, I would spend money on huge L2
caches and memory bandwidth over processor interconnect. 

My humble $0.02 worth... 

						-Rich
