From: Florian Lohoff <flo@rfc822.org>
Date: Sun, 19 Sep 1999 21:02:40 +0000
Subject: Re: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93777522332062@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93761559712738@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93761559712738@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Sep 17, 1999 at 09:50:55PM -0400, David A. Cooley wrote:
> At 06:41 PM 9/17/99 -0700, David S. Miller wrote:
> >    Date:   Fri, 17 Sep 1999 20:44:54 -0400
> >    From: "David A. Cooley" <n5xmt@bellsouth.net>
> >
> >    Anyone know where I can get a firmware upgrade for the Qlogic SBUS
> >    cards that will flash them under Linux??? (or how to do it from the
> >    boot prompt on an Ultra II?????)
> >
> >It needs to be loaded by the driver, so you'd need to update the
> >firmware in the drivers/scsi/qlogicpti_asm.h source file in the
> >kernel, then rebuild the kernel with the new driver and reboot.
> >
> >Matt Jacob has newer firmware in his ISP driver collection, but I have
> >not tried nor tested it on any of my SBUS isp cards so I cannot say if
> >it works or not.  In the past, my attempts to load newer firmware or
> >allow firmware loading on newer cards has resulted in one problem or
> >another and this is why it is not updated in the latest drivers, so
> >be forwarned.
> 
> Ah..
> Is there a firmware that has problems, or will running 2 different firmware 
> levels in 2 cards cause problems?
> My 2 cards are 1.21 and 1.25

As i understand Dave and the Source on every initializing of the Cards
the firmware gets loaded into the chips ... So you will always
end up with the firmware in the driver ...

Flo
PS: I have got problems with the QlogicPTI SBUS too. I have problems 
    under high raid load where the SCSI bus seems to freeze (The drivers
    does ongoing resets of the single targets which does not stop until
    i switch the machine off)
PPS: I am also interested in testing new firmware ...
-- 
Florian Lohoff		flo@rfc822.org		      	+49-5241-470566
  ...  The failure can be random; however, when it does occur, it is
  catastrophic and is repeatable  ...             Cisco Field Notice
