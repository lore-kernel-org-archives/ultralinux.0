From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Tue, 03 Nov 1998 11:04:03 +0000
Subject: Re: Further changes in UltraPenguin 1.0.9
Message-Id: <marc-linux-ultrasparc-91009119107975@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91003448018926@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91003448018926@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:
> I've updated the ftp area of UltraPenguin.
> I've tried to fix all bugs with tftp/floppy install I discovered,
> particularly:
> 
> timeconfig/ntsysv are fixed
> boot loader should be installed just fine

I'll give it another try on my Ultra5. I mirrored it the first time
and I've left it trying to mirror each night. Apologies if I should
have let you know in advance but I was eager to try it. Unfortunately,
recent mirror don't seem to have succeeded due to timeouts or failed
connections but I'll try running it manually. For those who are
interested, the mirror is
    ftp://ftp.ox.ac.uk/pub/linux/ultralinux

A suggestion for improving the installation: at the moment it seems
to demand a swap partition. That's a nuisance since I only wanted to
put Linux on one partition on this box and I had to wipe out a 0.5GB
Solaris partition just to satisfy the install program's swap craving.
It would be nice if it could be made optional. Congratulations on
pulling everything together and getting it to the stage where it's
pretty much a straightforward install.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
