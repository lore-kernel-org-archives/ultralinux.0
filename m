From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Tue, 12 May 1998 21:12:19 +0000
Subject: Re: Booting An Ultra Sparc 10
Message-Id: <marc-linux-ultrasparc-90222356531013@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531012@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531012@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Stephan,

You can make the Open Boot Prom skip the on-board graphics controller by 
doing the following:

At the ok prompt type the following:

1) ok " setenv pcib-probe-list 1,3 "

       {This will mask out device "2"(m64b@2)on motherboard, and
        force the system to use the PCI graphics card instead.}
        
2) ok " reset "    

        {This will store new entry into the nvram, so the PCI card 
        is the console boot device.}

That should work - we do that in our lab to test other graphics cards.

David Andrew
----------------
> Date: Tue, 12 May 1998 19:56:55 +0000
> From: Stephan van Hienen <s.v.hienen@cable.a2000.nl>
> MIME-Version: 1.0
> To: ultralinux@vger.rutgers.edu, ddx@cable.a2000.nl
> Subject: Booting An Ultra Sparc 10
> Content-Transfer-Encoding: 7bit
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> hi just wanted to install on an ultra sparc 10
> (300mhz ultra II with 320mb ram)
> i'm doing the load with boot net
> form an intel redhat 5.0 (p2)
> 
> i shows linux 2.1.99 (or the .old image or .verryold)
> 320mb ram
> and that i use the ati controller (there is also an creator 3d inside,
> but the monitor is on the oboard card)
> 
> and it crashes :
> 
> openboot 3.11
> 
> 
> Boot device /pci@1f,0/pci@1,1/network@1,1
> 
> i tells me :
> 
> Found cpu 0
> found 1 cpu  prom device tree node(s).
> Central: no central found.
> Memory: 319560k available (1576k kernel code, 4432k data, 152 init)
> [fffff80000000000,fffff80013f26000]
> SBUS: No SBUS's found.
> Console: colour SUNPCI 128x54, 16 point font, 864 scans
> PCI: Probing for controllers
> PCI: Found SABRE, main regs at ffff(5f)9fe00000000
> SABRE: PCI cofnfig space at fffff9fe01000000
> SABREL DVMA at c0000000 [2 [20000000]
> 
> PCI: Probing PCI hardware 
> ebus0: fff.........
> ebus1: fff...........
> mach64_init:  IOBASE[fffff9fe02c00100] MEMBASE[fffff9ffe1000000]
> mah<err>
> mach64_init  chip_type[4754], total_vram[00200000]
> Unable to handle kernel NULL pointer dereference<1>tsk->mm->context > 0000000000000000
> tsk->mm->pgd = fffff800000020000
> 
> (here a picture )
> 
> swapper(0):Oops
> TSTATE: and then some registers
> ......
> .......
> .......
> .......
> ......
> .......
> .......
> DUMP:
> 
> Kernel panic: Attempted to kill the idle task
> In swapper task - not syncing
> Press L1-A to return to the boot prom
> _
> 
> 
> and that is it
> 
> 
> P.s. also mail me at ddx@cable.a2000.nl
> because i'm not approved by the list owner to be on the list
> so i can't read the list
> 
> P.s. i typed this stuff in
> so i can have made a  mistake

David Andrew       Tel:  978-442-2316            Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
