From: "David S. Miller" <davem@redhat.com>
Date: Sat, 18 Sep 1999 01:44:34 +0000
Subject: Re: Boot on AXMp is failing
Message-Id: <marc-linux-ultrasparc-93762033915561@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93759408926335@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93759408926335@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Fri, 17 Sep 1999 14:08:05 -0400
   From: Brent Jay Thorpe <brent.thorpe@sun.com>

   IHAC who asks:


	cdrom(Red Hat 6.0 Linux)Boot on AXMp is failing with the
	following error
	message:

	UGH: property for adc was 8,need < 1


   Not sure what the problem is.  Any help would be appreciated

Yep, unfortunately the use nonstandard properties for some of the
environmental control devices behind EBUS in AX* systems, and since
we wouldn't know how to handle these parameters we fail instead of
crashing the system.

Without access to such a system I cannot provide a "safe" workaround.

This is peculiar report in that an AXmp system I temporarily had
worked fine, this must be a newer revision of the board because this
reported failure case did not exist with the AXmp board I tested on
several months ago and the relevant pieces of the kernel have not
been changed in the meantime.

Later,
David S. Miller
davem@redhat.com
