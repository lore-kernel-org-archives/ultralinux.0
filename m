From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
Date: Wed, 06 Oct 1999 19:31:57 +0000
Subject: Re: SCSI strangeness on Ultra2
Message-Id: <marc-linux-ultrasparc-93924297712090@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93923506202161@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93923506202161@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
 >    Date: Wed, 6 Oct 1999 15:04:41 -0400 (EDT)
 > 
 >    The renegotiation information that appeared in dmesg was present at
 >    boot time and was never repeated.  The problem I had was that since
 >    I was trying to copy about 40 MBs to the ZIP drive at once it froze
 >    almost everything for minutes at a time, then would release it,
 >    then would freeze again, then would release it...you get the idea.
 > 
 > The reset policy when a device locks up the SCSI bus is to
 > turn off all "features" to that device, which includes synchronous
 > data transfers and disconnect.  The lack of disconnect is almost
 > surely what is causing the problem, when a read/write is issued
 > to the drive, that SCSI bus is effectively unusable by any other
 > SCSI device on it until the ZIP drive completes the read/write
 > request.

Just so you know, I didn't have the cable I needed to connect the ZIP
250 to esp0 but I did have another SCSI card handy.  I installed esp1
and connected the ZIP 250 without trouble.  There are no other SCSI
devices attached to it.  The three other SCSI devices are on esp0.
Does this jive with your reasoning as to why the computer was
freezing?

Thanks for the patch.  I'll apply it and let you know how it goes.

-- 
Ryan
