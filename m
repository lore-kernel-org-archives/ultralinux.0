From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Sat, 31 Oct 1998 00:16:53 +0000
Subject: Re: complicated install of ultralinux 1.0.9
Message-Id: <marc-linux-ultrasparc-90980317210854@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90968467023021@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90968467023021@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Charlie,

I have been installing UltraPenguin on UltraSparc systems from a 
Solaris-based boot server for months without problems.  Just followed the 
UltraPenguin installation instructions - it worked.  However, I already had 
a server set up to serve net boots. 

Here is what worked for me:

I downloaded and set up a RedHat directory in my server with all its RPMS 
and base files.  Then, all I did in my Solaris-based server was:

-Downloaded tftpboot.img and put it in in the server's /tftpboot
-Convert the system hostname to the right format for a /tftpboot link
	(as described in the UltraPenguin docs)
-ln -s tftpboot.img <formatted_hostname>  (in the /tftpboot directory)
-put the name-to-ethernet-address link in the /etc/ethers directory 
-share the directory in which RedHat directory is located
-arp -s host_name  ethernet_address  (for Solaris).  Actually, the new 
	tftpboot.img just released has a problem; you may want to wait 
	for the bug fix.

On the host:

"boot net"
put in the networking addresses, plus the server's ip address and the 
directory in which the RedHat directory is located, and stand back.

Works for me (except for the October 29 tftpboot.img).

The bootable CD is more problematic; you will have to wait a bit, I think. 
I don't think anyone has one yet, unfortunately. I presume the UltraPenguin 
guys will let everyone know when it happens - most of us are interested. 


David
-----
> Date: Fri, 30 Oct 1998 11:30:09 -0800 (PST)
> From: charlie N <neuromancernt@yahoo.com>
> Subject: Re: complicated install of ultralinux 1.0.9
> To: Roland Turner <raz@arrakis.com.au>
> Cc: ultralinux@vger.rutgers.edu
> MIME-Version: 1.0
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> The actual idea of installing, booting of the network using tftp is
> ingenious (in a bizzarre linux way), but has anyone ever actually had
> the beta v1.0.9 to install on their Sparc or Sun machine?  
> Also, I have access to a burner also, but trying to find a HOWTO that
> will explain a Sparc CD-R burn is beyond me. Just to get the CD-R to
> even be recognized by the sun machine would be difficult. 
> If the creators of UltraLinux could send me a CD with the beta on it,
> I/we would be able to test it and report errors and what not. I
> actually have emailed David Miller and asked him if he would send me a
> CD, but his reply was nothing more than a URL to the ultralinux site
> :-(. 
> 
> just my $.02
> Charles
> ---Roland Turner <raz@arrakis.com.au> wrote:
> >
> > charlie N wrote:
> > 
> > > I have two sparc ultra 5 machines sitting in my office running
> solaris
> > > and really want to convert from crappy solaris to the UltraLinux ver
> > > 1.0.9. However, the installation procedure, specifically the boot
> > > procedure is utterly too complicated.
> > 
> > I see the network boot procedure as pretty simple, I just can't get it
> > to work :-)
> > 
> > (I'd really love to hear from anyone who has UltraPenguin working on
> an
> > Ultra 60 or an Enterprise 1.)
> > 
> > > There has to be a simpler way to
> > > install v1.0.9 on my Sun machine. Could someone burn me a bootable
> CD
> > > with v1.0.9 (I would pay for it) because I am certain that I will
> not
> > > be able to get tftp to work, along with the other procedures
> required
> > > to install the boot sequence.
> > 
> > Well, consider this a tentative offer. I have access to a burner, and
> > hardware on which I can test the result. If someone can point me at
> > documentation on how to create a CD-ROM that will boot on a SPARC,
> I'll
> > burn a few.
> > 
> > - Raz
> > 
> 
> _________________________________________________________
> DO YOU YAHOO!?
> Get your free @yahoo.com address at http://mail.yahoo.com
> 

David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
