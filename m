From: Jens Axboe <axboe@suse.de>
Date: Wed, 09 Feb 2000 19:48:33 +0000
Subject: Re: CD ripper/MP3 encoder
Message-Id: <marc-linux-ultrasparc-95012571309895@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95005914224137@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95005914224137@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Feb 09 2000, Peter Jones wrote:
> The mechanism for reading CDs in an ATAPI drive and a SCSI drive are
> fundamentally the same thing.  In fact, most everything else is too --
> ATAPI is sending SCSI commands over an IDE bus.

And in fact 2.3 uses the exact same code to do ripping from
SCSI and ATAPI drives.

-- 
*  Jens Axboe <axboe@suse.de>
*  Linux CD-ROM Maintainer
*  http://www.kernel.dk
