From: Eric <ebrower@usa.net>
Date: Thu, 25 Jan 2001 12:21:54 +0000
Subject: Re: [Re: Linux Status for Sun Netra T1 200 ]
Message-Id: <marc-linux-ultrasparc-98045419728287@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

"David S. Miller" <davem@redhat.com> wrote:

> Michael Pruznick writes:

>>   For deployment, stand alone boot will be required.  Will the f/w let
>>   me boot from a local scsi disk?  What about user flash?  Will f/w let
>>   me store/boot an initrd kernel image from a flash device?

> What do you mean by "user flash"?  There is no place to burn a flash
> outside of the OBP firmware image itself.

The Netra t1 boardset is very similar (if not identical) to the
CompactPCI CP1500 boardset, which contains two userflash devices
with 4MB each.  I am currently looking into support for the userflash devices
on the CP1500, so I assume this would work for Netra as well.
In the interim, you might be able to hack the jsflash driver for 
userflash, but I am investigating support via the MTD subsystem.

Aside from the current work on userflash, the CP1500 is fully supported.
Unfortunately, SMCC seems to have a 'flavor of the week' approach to
OBP device node naming, unlike SME, so I'd bet much of Netra t1 can 
be supported with a little hand-waving in the current drivers.

Once you get the box, please send me (offline) the output from 
'prtconf -pv' under Linux to satisfy my curiosities.

E




____________________________________________________________________
Get free email and a permanent address at http://www.netaddress.com/?N=1
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
