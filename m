From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 05 Nov 1998 12:12:53 +0000
Subject: Re: Ultra Penguin 1.0.9 using Red Hat 5.1: Is it possible?
Message-Id: <marc-linux-ultrasparc-91026819622475@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91026617621760@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91026617621760@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi !
> 
> I have bought "Red Hat 5.1 for SPARC" disk set.
> I decided to test "Ultra Penguin 1.0.9" but it was made for 5.0 version.
> It's difficult to me to buy another Red Hat package.
> Does anybody knows if "Red Hat 5.1 for SPARC" can be used to setup "Ultra
> Penguin 1.0.9" in a Ultra 1 machine?
> If doesn't: Is there a fast site in the WEB to download "Red Hat 5.0 for
> SPARC" disk(s)?

RH 5.1 does not work on UltraSPARC, neither 5.2 does.
Current UP 1.0.9 is the only distribution, AFAIK, which has full support for
both sparc32 and sparc64 in the same distribution.
Yes, it is based on 5.0, although with many improvements, but installer is
already fully 5.2 based (with many improvements). I'll be announcing CDs of
that distribution RSN and will work later on merging 5.2 with UltraPenguin
1.0.9. I hope that it can be finished soon, but till then you have no other
options.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
