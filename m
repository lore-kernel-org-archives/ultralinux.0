From: Peter Jones <pjones@redhat.com>
Date: Wed, 09 Feb 2000 18:53:58 +0000
Subject: Re: CD ripper/MP3 encoder
Message-Id: <marc-linux-ultrasparc-95012290007092@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95005914224137@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95005914224137@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 9 Feb 2000, Aaron T Porter wrote:

> On Wed, 9 Feb 2000, Shawn Hooton wrote:
> 
> > This is easy!  I have a PII 400 with 1 2GB SCSI2 HD and a 4x SCSI
> > toshiba CDROM and I encode, rip, and play mp3s all the time.  In fact I
> > have even compiled code during this process!  Note:  Esd had to be
> > reniced to -10
> 
> 	Do you have a SCSI drive that will read audio tracks at above 1x?
> 	If so, which brand/model?

Erm... I've got a plextor that'll do that, a couple of toshibas that'll do
that (mostly shipped by sun), an HP that'll do that...

The mechanism for reading CDs in an ATAPI drive and a SCSI drive are
fundamentally the same thing.  In fact, most everything else is too --
ATAPI is sending SCSI commands over an IDE bus.

 -- Peter

THE MAGIC WORDS ARE SQUEAMISH OSSIFRAGE
