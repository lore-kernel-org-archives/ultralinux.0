From: "David S. Miller" <davem@redhat.com>
Date: Fri, 01 Jun 2001 09:56:48 +0000
Subject: Re: 2.4.5 and IDE probing hung
Message-Id: <marc-linux-ultrasparc-99138958329393@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-99138883527379@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-99138883527379@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Ralf Liesegang writes:
 > if i boot a 2.4.5 kernel on my system (ultra-sparcIIe) it hung during
 > IDE probing.
 > 
 > the system seem to loop in arch/sparc64/kernel/traps.c:do_dae() 
 > traped from drivers/ide/ide-probe.c:do_probe().

What exact PC is it taking this trap on, in what function and what
line of source exactly?  What is the address used by the load/store
instruction causing the trap, and does this match up to the I/O areas
of the IDE controller in the machine (as shown by lspci -v or
in the contents of /proc/pci)?

 > because ide-probe.c is not a sparc depend file, i won't put
 > a "pci_poke_in_progress" in that code, so i changed do_dae() to 
 > check the AFSR register. for details please check the code below.

It's getting a bus error in privileged mode.  This means it is
touching something in device space which is not responding, either
because there is no device there or the device there is not enabled.

 > unfortuanely i don't have much informations about the different
 > CPU version, so the flags i check from AFSR maybe different on
 > other CPU version (e.g.: CHAFSR_BERR in chafsr.h, seem to be one
 > of the bits on Cheetah(?)).
 >
 > so if possible someone who knows have a look to the code below
 > and give me a tip for a "good" patch.

I cannot suggest a good patch until we know exactly what is triggering
the trap in the first place.

do_probe in ide-probe.c does nothing more than perform perfectly
normal accesses to the IDE controller registers.  What kind of IDE
chipset is in your system, and what information does the driver print
out when this device is probed?

Does the IDE controller even work with your patch applied?

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
