From: Jens Axboe <axboe@image.dk>
Date: Thu, 02 Dec 1999 00:27:58 +0000
Subject: Re: Problem with compiling 2.2.13 kernel
Message-Id: <marc-linux-ultrasparc-94409447831127@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94409299430208@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94409299430208@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, Dec 02 1999, Bosko Radivojevic wrote:
> Hello,
> 
> Again me with problems ;)
> 
> I've tried to compile 2.2.13 kernel.. I did make menuconfig, make dep, and
> just 'make'. But, include/linux/raid/md.h file is missing?

[disclaimer: quoted from davem]

This was an oversight wrt the new raid code. Get and apply
2.2.14-pre9 (or whatever is newest now), it compiles and
runs just fine (for me at least :).

-- 
*  Jens Axboe <axboe@image.dk>
*  Linux CD-ROM Maintainer
*  http://www.kernel.dk
