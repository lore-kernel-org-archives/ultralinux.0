From: "David S. Miller" <davem@redhat.com>
Date: Wed, 06 Oct 1999 18:51:29 +0000
Subject: Re: SCSI strangeness on Ultra2
Message-Id: <marc-linux-ultrasparc-93923868205889@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93923506202161@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93923506202161@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
   Date:   Wed, 6 Oct 1999 14:08:24 -0400 (EDT)

   I'm having some trouble on my Ultra2 with the SCSI busses.  If I am
   accessing the ZIP 250 drive on the second SCSI bus then it will
   really confuse the whole system.  Keyboard doesn't take input,
   programs freeze their operation, X freezes for minutes and then
   begins to work.  If you would like more info let me know.

Aparently the ZIP drive does not like to negotiate sync/wide SCSI
parameters, that is why the SCSI bus locked up and the chain needed
to be reset.

Happily all of my error recovery seems to work and you get things
working after the timeout is hit and the scsi bus is reset.

Later,
David S. Miller
davem@redhat.com
