From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Thu, 06 Aug 1998 14:04:32 +0000
Subject: Re: UP 1.0.9 on Ultra AX or Ultra AXi
Message-Id: <marc-linux-ultrasparc-90243563023929@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90238261800743@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90238261800743@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David,

I don't think the distribution at the unc site is the one to use - use the 
UltraPenguin-1.0.9 at the sunsite in CZ.  I have loaded it on my UltraAX and 
Ultra5 systems, using a local server into which I loaded the RPMS files, and it 
has been proven on UltraAXi systems as well by a UltraPenguin developer (Eddie 
Dost) Find what you need at:

http://sunsite.mff.cuni.cz/ftp/OS/Linux/Non-x86/Sparc/local/ultrapenguin-devel/

Good Luck

David Andrew
-----------
> Date: Wed, 05 Aug 1998 18:29:57 -0700
> From: David Van Beveren <dvb@eis.com>
> MIME-Version: 1.0
> To: ultralinux@vger.rutgers.edu
> Subject: UP 1.0.9 on Ultra AX or Ultra AXi
> Content-Transfer-Encoding: 7bit
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> Completely new to Linux.
> 
> Today I downloaded the tftpboot.img image from the
> /pub/Linux/distributions/ultra/sparc64/images directory on Sunsite
> (UNC). I know how to set up tftp and rarp, and can watch both an Ultra
> AX and Ultra AXi board from Sun download the tftp image (2.5MB).
> Immediately on completion of the download, I get "Illegal Instruction"
> 
> (From Solaris 2.6)
> #cd /tftpboot
> #sum tftpboot.img
> 6024 5059 tftpboot.img
> 
> Either:
> 1. I am doing something wrong
> 
> 2. This distribution does not work on the Ultra AX and AXi boards from
> Sun Microelectronics.
> 
> 3. Something else.
> 
> ***
> 
> If anyone has any idea which is the right answer, please advise. We are
> interested in putting the low-cost UltraSPARC II(i) boards together with
> UltraPenguin at the earliest opportunity.
> 
> If this board is not supported and someone qualified wants to work in
> this area, we will donate hardware.
> 
> David Van Beveren
> dvb@eis.com
> 
> 

David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
