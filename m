From: "David S. Miller" <davem@redhat.com>
Date: Tue, 19 Mar 2002 22:30:54 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101657749909619@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Erik de Castro Lopo <nospam@mega-nerd.com>
   Date: Wed, 20 Mar 2002 06:59:21 +1100

       qlogicfc0 : new isp2x00 revision ID (4)
       qlogicfc0 : link is not up
   
   I am now going to try and disable fiber channel support and see if
   I can get it any further.

It could definitely be the problem.  Where is this fibre channel
interface, on the motherboard or on a PCI card?  If so, what is
this PCI card?
