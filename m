From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Mon, 09 Nov 1998 18:27:05 +0000
Subject: hme on SunSwift card won't talk
Message-Id: <marc-linux-ultrasparc-91065846415399@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
>    Date: 	Wed, 4 Nov 1998 10:37:54 +0000 (GMT)
>    From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
> 
>    It was detected as eth0 successfully (the onboard hme was detected
>    as eth1) but it didn't seem to be able to receive packets
>    properly. tcpdump from the remote side showed it sending out arp
>    queries and showed the corect reply being sent back but the ultra
>    just kept sending out arp queries as if it hadn't received
>    anything. The card itself works fine with Solaris. I ended up
>    removing the card completely after which an installation went fine
>    with the on-board hme (apart from later non-network problems that I
>    mention in the other message).
> 
> There were some problems with scsi/eth PCI cards on Ultra5's earlier,
> when was the most recent kernel you have tried with the card in the
> machine?  We believe this particular to be fixed by now.

Now that I have ultralinux installed and the SunSwift card back in,
I can confirm the problem: kernel 2.1.25, driver:
    sunhme.c:v1.2 10/Oct/96 David S. Miller (davem@caipfs.rutgers.edu)

With the cable plugged into eth0 (the SunSwift hme), no data gets
sent down the wire when networking is configured. With the cable
plugged into eth1 (the on-board hme), everything works fine. The
sunhme detects linkbeat and negotiates speed/duplexness fine with
both interfaces. It just won't talk down the Sunswift interface.
If you want details of any data from /proc/openprom or such like then
I can now get it for you.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
