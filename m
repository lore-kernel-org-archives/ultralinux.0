From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Sat, 18 Sep 1999 22:28:45 +0000
Subject: Re: Bootable CD
Message-Id: <marc-linux-ultrasparc-93769357822389@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93319523004027@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93319523004027@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 06:15 PM 9/18/99 -0400, you wrote:
>I was wondering, how(if) can I create a bootable cd for use on an ultra 
>sparc II with no floppy drive.  Thanks.


Yes.
Not sure the exact procedure, but you can download the ISO image for 
UltraPenguin 1.1.9 from http://ultra.penguin.cz, or the RH 6.0 for sparc 
ISO.  The RH cd has a problem and won't boot, but if you ftp the file 
tftp64.img to the root dir on the sparc box, then put the RH 6 cd in the 
cdrom drive, do init 0 on the sparc machine and type boot disk /tftp64.img 
it will boot and load the CD for the install.

=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
