From: Aaron T Porter <atporter@primate.net>
Date: Wed, 09 Feb 2000 08:49:29 +0000
Subject: Re: CD ripper/MP3 encoder
Message-Id: <marc-linux-ultrasparc-95008613606759@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95005914224137@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95005914224137@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 8 Feb 2000, Charu Chaubal wrote:

> Can anyone recommend some programs for Linux on Ultra for ripping CDs and 
> encoding MP3's?

	As davem suggested, check freshmeat.

> (I assume this is one application where an Ultra would do much better than an 
> x86, even one with much higher MHz rating).

	You'd think so, but any modern CPU does just fine at mp3 encoding,
	better than realtime usually. The bottleneck is usually the CD 
	drive, and my personal experience has been the consumer-grade
	ATAPI CD drives are the only ones with greater than 1x audio read
	speeds.  I haven't tried ripping audio tracks on any of my sun
	boxes though, YMMV.

+--------------------------------------------------------------------------+
| Aaron T Porter                      | If you can't code it -- support it |
| atporter@primate.net                | Help make Linux work for everyone  |
| owner-linux-kernel@vger.rutgers.edu | Subscribe to linux-admin today.    |
+--------------------------------------------------------------------------+
