From: "David S. Miller" <davem@redhat.com>
Date: Sat, 06 Jan 2001 00:18:45 +0000
Subject: Re: Storage options for Sun E450 / Linux?
Message-Id: <marc-linux-ultrasparc-97874140126165@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-97872904429351@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-97872904429351@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   X-Coding-System: iso-8859-1-unix
   From: sean.upton@uniontrib.com
   Date: 	Fri, 05 Jan 2001 13:12:18 -0800

   Is anybody using an E450 with hardware RAID controllers they would
   recommend?  Anybody using software RAID with multiple USCSI
   controllers in the E450?  Are the USCSI controllers that are
   bundled with the 8-slot backplanes that Sun sells supported by the
   kernel?  What about the RAID controllers?

Someone else made commentary about disks to use, so I'll answer the
RAID bits.

Currently your only option is software raid.  I think it's more
flexible and honestly from what I've seen, all claims about
significant performance gains of hw RAID vs. sw RAID have amounting to
nothing more than hot air.  Moreso I've seen that hw RAID when it
fails can be a pain in the ass to fix up, and in many such cases sw
RAID would have allowed the partitions to be recovered.

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
