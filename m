From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 06 Jul 1998 20:56:34 +0000
Subject: Re: openboot question
Message-Id: <marc-linux-ultrasparc-90222358531000@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358530997@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358530997@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> >Is the `map?' command using dTLB entries ? How can I see which
> >Physical Addr does the vaddr 404000 map to in the iTLB ?
> 
> I haven't used 'map?' myself, but I believe map? reads the translation
> table in main memory, not TLBs.  If you really need the contents of
> TLBs, you can use ASI's (spacex@ etc).
> But anyway, I think VA:404000 should map to PA:404000.

map? reads translations PROM knows about, and as we don't know exactly how
to tell PROM about our translations, map? simply does not work after head.S
code relocates the kernel and even more after we install our own trap table
with VPTE tricks etc.
VA 404000 should probably map to 4000 PA (if you fill your memory banks
from 0) or at the lowest physical address + 4000 in your system.
The nucleus virtual space looks like this:

0-4M: unmapped
4M-8M: kernel code+data
then modules, below 4G PROM mappings
then DVMA
fffff80000000000-fffffffc00000000 VA=PA+fffff80000000000
fffffffc00000000-ffffffffffffffff nucleus VPTE

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.107 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
