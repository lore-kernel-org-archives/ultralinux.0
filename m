From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sat, 18 Sep 1999 07:37:06 +0000
Subject: Re: Boot on AXMp is failing
Message-Id: <marc-linux-ultrasparc-93764078724992@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93759408926335@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93759408926335@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Sep 17, 1999 at 06:44:34PM -0700, David S. Miller wrote:
>    Date:   Fri, 17 Sep 1999 14:08:05 -0400
>    From: Brent Jay Thorpe <brent.thorpe@sun.com>
> 
>    IHAC who asks:
> 
> 
> 	cdrom(Red Hat 6.0 Linux)Boot on AXMp is failing with the
> 	following error
> 	message:
> 
> 	UGH: property for adc was 8,need < 1
> 
> 
>    Not sure what the problem is.  Any help would be appreciated
> 
> Yep, unfortunately the use nonstandard properties for some of the
> environmental control devices behind EBUS in AX* systems, and since
> we wouldn't know how to handle these parameters we fail instead of
> crashing the system.

Actually if you could send us output of
prtconf -pv
on Solaris, we could see if there is some obvious solution.
But the last AXmp I looked at had the PROM tree really broken in lots of
places (as bad as some JavaStations).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
