From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Fri, 17 Sep 1999 21:21:09 +0000
Subject: Re: Install options on AXi
Message-Id: <marc-linux-ultrasparc-93760529005500@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93760525605213@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93760525605213@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 03:43 PM 9/17/99 -0400, Brent Jay Thorpe wrote:
>All,
>
>I have to make a customer presentation about install options with Linux
>on AXi (CDROM, Floppy, Network.)  I have been doing some homework in
>making the "slideware" and found that you could get the initial boot
>loader from a floppy device (as well as tftp.)  In following the
>instructions on creating the floppy, I found that my system does not
>recognize the floppy device as a valid block device.  In other words, it
>cannot see the floppy device at all.  I also found out that it does not
>recognize the printer port (lp0) either.  Anyone know what is the
>correct device for both the floppy and printer on an AXi?


Brent,
I believe the AXi is an UltraSparc based board... None of the Linux ports 
to sparc support the Floppy for boot, and the lp port is only supported 
experimentally.

=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
