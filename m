From: Peter Jones <pjones@redhat.com>
Date: Tue, 24 Aug 1999 16:58:05 +0000
Subject: Re: cdda2wav
Message-Id: <marc-linux-ultrasparc-93551500822659@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93543473712967@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93543473712967@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 24 Aug 1999, Ryan Cresawn wrote:

> Peter Jones writes:
>  > On Mon, 23 Aug 1999, Ryan Cresawn wrote:
>  > 
>  > > Should it be possible for me to compile `cdda2wav' with RH 6.0 and
>  > > kernel 2.2.10?
>  > 
>  > Yeah, should work fine.  Of course, cdparanoia is (for most cases) a
>  > better choice, but still...
> 
> OK I've compiled `cdparanoia' and `bladeenc', but I can't make the two 
> work together.  I'm able to write WAV files from the CD tracks and
> play them back with `xmms' (formerly `x11amp'), however when I convert 
> from WAV to MP3 with `bladeenc' I get nothing but static.  I can play
> MP3s recorded on other computers.  I thought maybe this was an
> endianness issue, but I really don't know.  Can anyone help?

You guessed it.  One that works is at:
ftp://wopr.campus.luth.se:/pub/mpeg_layer_3 .  Looks like its from the
ISO sources, with some fixes, so it isn't going to be the best performing
encoder, but at least it makes recognizable sound ;)

 -- Peter

"If the facts don't fit the theory, change the facts."
		-- Einstein
