From: Roland Turner <raz@arrakis.com.au>
Date: Wed, 28 Oct 1998 15:17:09 +0000
Subject: Re: Trouble installing on Ultra 60
Message-Id: <marc-linux-ultrasparc-90959386812056@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90946703917734@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90946703917734@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Darren Tom wrote:

> I tried installing UltraPenguin 1.09 on the Ultra 60, dual 360MHZ and
> encountered problems
> with the built-in peripherals.

Whilst I wait for inspiration/assistance on my installation problems
with an Enterprise I, I decided to tinker with and Ultra 60 (dual
300MHz, Creator3D). This machine is used for real work by myself and
others, so there are limits to what I can do, but I decided that I'd
like to get a little further than I did with the Enterprise I.

Anyway:

> 1) The kernel itself booted successfully from the
> net, but the built-in NCR 53C875 rev 0x14 was not properly recognized.
> The error shown on the diagnostic console indicates the controller's
> cache is not configured correctly.  How do I configure the cache and/or
> work around this problem?

You diagnosed a little more than I did. I got as far as noticing the
claim that there were no hard drives and no controllers available to
choose, despite /tmp/syslog suggesting that the NCR controller had been
detected.

> 2) The PCI HappyMeal ethernet controller claims to have been recognized,
> but any attempt to set the ip addr, etc. results in either a complaint
> about setting the netmask or a hang while the system is trying to
> determine the hostname. Is there something special about the addresses
> that I'm missing?  The ip that I'm specifying is set in our dns server.

I'm having the same problem. I'm confident that my IP address is
available to me (it's the same address that the machine uses in
production use), and I'm on the right network, the netmask is the
default (0xffffff00), the name server and router are on the same subnet.
The name server is able to do a reverse lookup of the address, and a
forward lookup of the resulting name yields the same address. A few
seconds after pressing Enter, the machine hangs. (I'm using CAPSLOCK
response to determine the moment of crash.)

Unfortunately the network is switched (and I don't have access to the
switch), so sniffing the cable to find out what's happening there is
currently beyond me. I'll try again sometime soon on a non-switched
segment.

Also, I'm not familiar with RedHat. "ifconfig" appears to be absent! Is
someone able to build a new boot image with ifconfig on it? Better, is
someone able to tell me how (or point me to a document) to build new
boot images, so I can do my own?

Thanks.

> p.s.  solaris 2.6 works perfectly on this workstation.

Likewise.

- Raz
