From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Wed, 22 Jul 1998 14:44:56 +0000
Subject: Re: Searching for scsi card (for sun ultra-10)
Message-Id: <marc-linux-ultrasparc-90222358531068@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531067@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531067@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Stephan,

The Adaptec 2940UW-OF is what you need - it has the open firmware on so 
it can talk to the OBP in the Ultra5.

Another alternative could be the IntraServer Technologies Series 3000 
adapter cards; they use Symbios parts, like the Sun cards.  They are 
probably supported by the Linux drivers; one of the driver guys can 
comment on that.

Their web site is:  http://www.intraserver.com/products/

Dave Andrew
-------
> X-Authentication-Warning: ddx.ml.org: ddx owned process doing -bs
> Date: Wed, 22 Jul 1998 10:07:53 +0200 (CEST)
> From: Stephan van Hienen <ddx@cable.a2000.nl>
> X-Sender: ddx@ddx.ml.org
> To: ultralinux@vger.rutgers.edu
> Subject: Searching for scsi card (for sun ultra-10)
> MIME-Version: 1.0
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> ok i want a scsi hd for my sun ultra-10
> problem is only which......
> 
> ncr 875 is not availeble here (called a lot of dealers, but the told 
me
> the card isnt availeble anymore)
> 
> then i thought about the 2940uw adaptec
> but i heard it must be a special version
> Can som1 tell me more  ?
> 
> 
> (i need an uw connector)
> 
> 
> 

David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
