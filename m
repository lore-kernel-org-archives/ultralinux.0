From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 04 Aug 1999 14:14:33 +0000
Subject: Re: Problems with NEW PATCH: ncr/sym drivers and bridges
Message-Id: <marc-linux-ultrasparc-93377596515282@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93375956828870@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93375956828870@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Aug 04, 1999 at 11:31:42AM +0200, pau@readysoft.es wrote:
> On Tue, 27 Jul 1999, Gerard Roudier wrote:
> > My previous patch didn't reap completions that much. This one should do
> > the work a lot better. 
> 
> I've been runnig 2.2.10 on Ultra PCI successfully for 3 days but....
> Today it has stopped working. instead of SIR Resets I've got:
> 
> Caller[0000000000415f40]
> Caller[000000000040fa64]
> Caller[000000000043b2fc]
> Caller[000000000043f718]
> Caller[0000000000416314]
> Caller[0000000000415f40]
> Caller[000000000040fa64]
> Caller[000000000043b2fc]
> Caller[000000000043f718]
> Caller[0000000000416314]
> Caller[0000000000415f40]
> Caller[000000000040fa64]
> Caller[000000000043b2fc]
> Caller[000000000043f718]
> Caller[0000000000416314]
> Caller[0000000000415f40]
> Caller[000000000040fa64]
> ......
> Caller[233123313b7e2331]
> Instruction DUMP: 22c2400d  c071a358  d05a8000 <d0724000> d05a8000
> 02c20004  d
> Aiee, killing interrupt handler
> data_access_exception: Shit SFSR[000000000080100d] SFAR[00000069373a2030],
> goin.

Seems like kernel stack corruption and overrun because for some reason some
kind of fault is nested. Can you run it through ksymoops?

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.3.13 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
