From: Eiki Ito <eiki@hal.com>
Date: Mon, 06 Jul 1998 18:38:22 +0000
Subject: Re: openboot question
Message-Id: <marc-linux-ultrasparc-90222358530998@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358530997@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358530997@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi Kapil,

>I am trying to debug the ultralinux kernel (sparc64 using prom ver
>3.0). After doing a dload, I try to disassemble, but it just shows a
>bunch of illtraps.

I have seen the same problem.  Looks like 'dis' doesn't work until
you do a 'go'.  So you have to set a breakpoint somewhere first,
go, and then dis.

>Also, setting a breakpoint to 404000 has no effect.

I have seen this too.  Try breakpointing some other locations
(Look into head.S, avoid branches and try to find straight line
fetch parts).  This worked for me in most cases.  (I have no idea
why -- call Sun's customer support for explanation)

>Is the `map?' command using dTLB entries ? How can I see which
>Physical Addr does the vaddr 404000 map to in the iTLB ?

I haven't used 'map?' myself, but I believe map? reads the translation
table in main memory, not TLBs.  If you really need the contents of
TLBs, you can use ASI's (spacex@ etc).
But anyway, I think VA:404000 should map to PA:404000.

Thanks,
Eiki
