From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Tue, 07 Jul 1998 14:55:29 +0000
Subject: Re: UltraPenguin109 + Ultra5 = Bad
Message-Id: <marc-linux-ultrasparc-90222358531007@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531001@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531001@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Stephan, Ken, et al,

I checked out patch number 106121-03 for Ultra5 & 10, which upgrades the 
OBP to 3.11.9. If you have access to the patch database, you can get the 
update from there.  It has a "stand-alone" Prom update included.  If not, I 
can get it for you.  The compressed tar file would be about 700K.  I can 
mail it to you, if we can trust the mailer.  If you have an ftp site I can 
access, we can also do it that way.   Let me know.

What it cures:
1. Symbios changed Vendor ID on its PCI SCSI interface cards; the system 
   could not boot from external SCSI drives on a Symbios card. 
   
2. Some PCI cards specify 64-bit Base Address range; that was broken.

3. Corrected the PCI Base Address Register probe to assure successful 
   probing; it failed with certain interface chips which did not
   declare the LSB read-only.
   
David Andrew
-----------

> Date: Tue, 7 Jul 1998 09:39:36 +0200 (CEST)
> From: Stephan van Hienen <ddx@cable.a2000.nl>
> X-Sender: ddx@ddx.ml.org
> To: "David.Andrew" <David.Andrew@East>
> cc: ultralinux@vger.rutgers.edu
> Subject: Re: UltraPenguin109 + Ultra5 = Bad
> MIME-Version: 1.0
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> On Mon, 6 Jul 1998, David.Andrew wrote:
> 
> > Hi Ken,
> > 
> > The latest open boot prom version is 3.11.9.  Send me a note if you 
would like
> > to update your OBP to the latest version.  I'll let the Linux technical 
guys
> > address the rest of the message.
> i have here a sun ultra 10 
> also with open prom 3.11.6
> 
> what is better with 3.11.9 ? 
> and how to get an update
> 
> 
> 

David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
