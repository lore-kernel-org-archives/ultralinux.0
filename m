From: Steve Johnson <Steve.Johnson@math.tamu.edu>
Date: Fri, 08 May 1998 16:14:15 +0000
Subject: Re: ultrapenguin as High Availability Raid Server
Message-Id: <marc-linux-ultrasparc-90222356530991@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530990@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530990@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Douglas Bowyer wrote:
> 
> We are preparing to implement a High Availability Raid Server, using dual
> ultrasparc systems controlling a Raid 5 assembly. It will be primarily
> configured for NFS. In its current status, would any of you use
> ultrapenguin?

I'd like to, but a couple of important parts are missing.  First, we
need a journalled filesystem (jfs).  Under Slowlaris with DiskSuite, a
jfs is setup with 2 partitions, one for the real filesystem, and one for
the log.  In a HA environment, the secondary server would be detect that
the primary is down and mount the primary's partitions that live out on
the RAID.  With a jfs, the secondary should be able to quickly assume
the duties of the primary server.  Without it, however, a potentially
long fsck would be needed before the partition could be mounted.  The
other part that's missing for us is support for ATM NICs.

Patience, patience...

- Steve

-- 
//                 Steve Johnson, Systems Administrator
// Dept of Mathematics, Texas A&M University, College Station, TX 77843
//   http://www.math.tamu.edu/~Steve.Johnson/    Phone: (409)845-4267
