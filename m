From: Fredrik Lundholm <exce7@ce.chalmers.se>
Date: Wed, 30 Dec 1998 11:31:50 +0000
Subject: Re: Ultralinux 1.1.9 brick wall....
Message-Id: <marc-linux-ultrasparc-91504133809984@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91493348232595@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91493348232595@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

> This is strange. I thought all E?k patches have made it to the latest kernel
> on the CD. Can you please try
> console=prom
> to see where it actually gets stuck?

Hmm this IS strange, when I tried booting it from the fresh install this
morning I just missed the silo prompt and pressed break just as Silo loaded
the kernel and this time it booted alright from the serial console.
I logged in, installed a few missing packages like telnet and switched to
the smp-kernel.

When I tried to boot smp-2.1.130, it stopped right after:
' root child at xxxx
  CPU1 enabled
  ...
  CPU14 enabled
'

so I cut the power and rebooted with console=prom (again with the smp-kernel)
and it goes as far as:
' ...
  6927,16 bogomips
  ...
  Sparc Zilog 8530 v1.35
'

So indeed it seems like something is misbehaving in the serial and or 
console-driver.

Also I noticed that the hme-driver failed to auto-negotiate 100Mb FD 
transfers with our Catalyst 5000 switch which it is connected to.
(when it booted the fresh install the first and only time I got it up)
I vaugely remeber someone else also noticing this, what was the
remedy? do the hme-driver accept kernel-arguments? 

> Cheers,
>     Jakub

/wfr/
-- 
Fredrik Lundholm
exce7@ce.chalmers.se
