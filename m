From: Peter Jones <pjones@redhat.com>
Date: Fri, 03 Sep 1999 19:58:26 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93638912817549@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 1 Sep 1999, David S. Miller wrote:

>    *** Segmentation fault
>    Register dump:
> 
>     PSR: ff801085 PC: 00027bcc NPC: 00027bd0   Y: 00000000
> 
> And what are 0x27bcc, 0x27bd0, and 0x213e0 near in the symbol
> table (nm -n /usr/X11R6/bin/Xsun24)... oh yeah, thats right, we ship
> stripped binaries don't we :-(  or I suppose you built a non-stripped
> image yourself for debugging purposes?  I need the symbol information
> to even begin to be able to debug this.

eww.  0x27bcc, bd0, and 0x213e0 look like:

0000000000027bbc t vis13          (for both of the first two) and
0000000000213de0 T SwapHalfSpace

Need any objdumps?

 -- Peter

The object of war is not to die for your country but to make the
  other bastard die for his.
		-- Patton
