From: <pau@readysoft.es>
Date: Wed, 15 Sep 1999 07:42:23 +0000
Subject: Re: bug in 2.2.13pre7 on Ultras (more oops)
Message-Id: <marc-linux-ultrasparc-93738196125019@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93738047523759@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93738047523759@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 15 Sep 1999, David S. Miller wrote:

>    From: pau@readysoft.es
>    Date: Wed, 15 Sep 1999 09:23:15 +0200 (CEST)
> 
>    > Also, are you getting correctable ECC memory errors in your
>    > kernel logs before this happens?  I am very close to starting to
>    > encourage
> 
>    If it should log anything, I don't get it. No errors in the logs or
>    the console but the ones I include.
> 
> What kernel are you running?  Maybe you are running a kernel which
> just ignores the CEE errors and does not log them, current 2.2.x
> kernels log all correctable ECC memory errors in the dmesg logs.

2.2.13pre7 + raid5 patches + ncr patch from Gerard Roudier
Tha machine sill runs ultrapenguin and the kernel is compiled on
ultrapenguin -see at the gcc compiler-.

# uname -a                                                    
Linux ultratest 2.2.13pre7 #1 Mon Sep 13 10:24:05 CEST 1999 sparc64
unknown

# dmesg
PROMLIB: Sun IEEE Boot Prom 3.10.6 1998/12/08 13:30
Linux version 2.2.13pre7 (root@ursa) (gcc version egcs-2.92.11 19980921
(gcc2 ss-980609 experimental)) #1 Mon Sep 13 10:24:05 CEST 1999
ARCH: SUN4U                                                                     

Pau
