From: Ralf Liesegang <Ralf.Liesegang@fujitsu-siemens.com>
Date: Fri, 01 Jun 2001 09:46:05 +0000
Subject: 2.4.5 and IDE probing hung
Message-Id: <marc-linux-ultrasparc-99138883527379@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

if i boot a 2.4.5 kernel on my system (ultra-sparcIIe) it hung during
IDE probing.

the system seem to loop in arch/sparc64/kernel/traps.c:do_dae() 
traped from drivers/ide/ide-probe.c:do_probe().

because ide-probe.c is not a sparc depend file, i won't put
a "pci_poke_in_progress" in that code, so i changed do_dae() to 
check the AFSR register. for details please check the code below.

unfortuanely i don't have much informations about the different
CPU version, so the flags i check from AFSR maybe different on
other CPU version (e.g.: CHAFSR_BERR in chafsr.h, seem to be one
of the bits on Cheetah(?)).

so if possible someone who knows have a look to the code below
and give me a tip for a "good" patch.

thanks,
	Ralf

void do_dae(struct pt_regs *regs)
{
#ifdef CONFIG_PCI
#define AFSR_PRIV       0x80000000      /* Privileged Code access error */
#define AFSR_BERR       0x04000000      /* Bus Error from system Bus */

        ulong   dae_error;

        /* read AFSR */
        __asm__ __volatile__("ldxa [%%g0] %1, %0"
                             : "=r" (dae_error)
                             : "i" (ASI_AFSR));

        if ((pci_poke_in_progress && pci_poke_cpu = smp_processor_id()) ||
            (dae_error & (AFSR_BERR | AFSR_PRIV))) {

                /* clear AFSR, don't touch the other bits */
                __asm__ __volatile__("stxa %0, [%%g0] %1"
                                    : /* no outputs */
                                    : "r" (dae_error & (AFSR_BERR | AFSR_PRIV)),
                                      "i" (ASI_AFSR));

		clean_and_reenable_l1_caches();

[...]


-- 
| Ralf Liesegang          Phone:  +49-5251-8-15131                  |
| FSC EP OS UX1           Fax:    +49-5251-8-16104                  |
| Heinz-Nixdorf-Ring      EMail:  Ralf.Liesegang@fujitsu-siemens.com|
| D-33106 Paderborn       NERV:   liesegang.pad                     | 
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
