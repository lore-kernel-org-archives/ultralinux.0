From: Miguel Barreiro Paz <enano@ceu.fi.udc.es>
Date: Fri, 26 Mar 1999 20:13:25 +0000
Subject: Re: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92248095126399@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92255674631513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92255674631513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


> > As far as I know, each ethernet connection from a given system must be in a 
> > different domain, otherwise one default connection (usually eth0) always 
> > defines that system's interface. 
> > 
> > David
> 
> Um.... I'm failing to see how that makes any sense at all.  If he's got
> individual IPs for each of the cards, and he's got a route for each of
> them, then they _should_ all work.  DNS doesn't have anything to do
> with that.
> 
>  -- Peter

	Unless PCI suns are any different, the hardware MAC address for
ethernet cards on sparc depends on the machine hostid. So, if you have 3
cards, they all share a common MAC address. It's OK if they are not in the
same _ethernet_ domain (not the same DNS domain). 

Regards,

Miguel
