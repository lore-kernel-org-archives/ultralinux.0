From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 18 May 1998 15:14:56 +0000
Subject: Re: List archives ?
Message-Id: <marc-linux-ultrasparc-90222356531048@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I couldn't find an archive for this list. Didn't I looked hard
> enough, did I look in the wrong place or should I ask my "I can't
> compile xxx && yy" questions here ?
> 
> P.S. You all did a great job with this ultrapenguin. I just
>      'converted' an ultra-1 and I must say that I (and my  
>      collegues) are impressed.

I don't know if there is any archive. But you should ask your I can't
compile xxx && yy questions here.
If it is related to mysql, then things are going to be solved really soon.
If it is a problem related to programs using threads (either cannot link a
static binary with -lpthreads or crashes of those programs), then it is
fixed and will be available soon. 
If it is a problem related to shared library compiled without -fPIC/fpic,
then a bug in ld is currently being fixed.
If it is any other bug, let us know.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.102 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
