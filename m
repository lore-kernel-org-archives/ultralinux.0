From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
Date: Wed, 06 Oct 1999 19:04:41 +0000
Subject: Re: SCSI strangeness on Ultra2
Message-Id: <marc-linux-ultrasparc-93924102709512@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93923506202161@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93923506202161@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
 >    Date:   Wed, 6 Oct 1999 14:08:24 -0400 (EDT)
 > 
 >    I'm having some trouble on my Ultra2 with the SCSI busses.  If I am
 >    accessing the ZIP 250 drive on the second SCSI bus then it will
 >    really confuse the whole system.  Keyboard doesn't take input,
 >    programs freeze their operation, X freezes for minutes and then
 >    begins to work.  If you would like more info let me know.
 > 
 > Aparently the ZIP drive does not like to negotiate sync/wide SCSI
 > parameters, that is why the SCSI bus locked up and the chain needed
 > to be reset.
 > 
 > Happily all of my error recovery seems to work and you get things
 > working after the timeout is hit and the scsi bus is reset.

The renegotiation information that appeared in dmesg was present at
boot time and was never repeated.  The problem I had was that since I
was trying to copy about 40 MBs to the ZIP drive at once it froze
almost everything for minutes at a time, then would release it, then
would freeze again, then would release it...you get the idea.
Anyways, this pattern continued for maybe 30-45 minutes until the copy
operation was complete.  It's true that I'm happy the computer didn't
permanently lock up, but I was unhappy to find my parallel port ZIP
drive on my PC to be much faster.

-- 
Ryan
