From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Thu, 19 Nov 1998 14:26:02 +0000
Subject: Re: Worth attempting an Ultra 30 install with 1.1???
Message-Id: <marc-linux-ultrasparc-91152095028321@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91138236409961@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91138236409961@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Incidentally, I tried 1.1 on 2 different Ultra 30's yesterday. It worked
on the one with a single ncr53c8xx (875, IIRC) and 2 disks on that. I
also tried it on one of the machines we have with 3 ncr53c8xxs (file
server configuration, raid arrays on 2 of the ncrs) and it identified 3
scsi hosts and got unhappy, didn't boot further, and started getting scsi
errors. This was both with the raid arrays attached, and with nothing on
the second two controllers (e.g. using only the internal).

When I finish using the disk on the machine I have it attached to now,
I'll try to collect the errors.

-D
