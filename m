From: rick@dgii.com (Rick Richardson)
Date: Fri, 26 Jun 1998 21:01:17 +0000
Subject: Re: Boot of 1.0.9 fails on Sun Ultra 1 (actually, Ultra 30)
Message-Id: <marc-linux-ultrasparc-90222357631036@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Rick Richardson writes...
> Dear UltraPenguins:
> 
> We dug up an UltraSparc machine here that identifies itself on
> the boot screen as:
> 
> 	Sun Ultra 1 UPA/PCI (UltraSPARC-II 248 Mhz)
> 
> It has 128 MB's of RAM in it.
> 

[snip]

> At the "ok" prompt, we booted off the network using the following
> command.  The machine sucked down the boot image from the tftp server,
> and then ended with an error message "Couldn't get translation
> property".  Here is what is on the screen:
> 
> 	ok boot /pci@1f,4000/pci@4/SUNW,hme@0,1
> 	Boot device: /pci@1f,4000/pci@4/SUNW,hme@0,1      File and args:
> 	27a800 TILO
> 
> 	Couldn't get translation property
> 	Program terminated
> 	ok
> 
> 
> Does anybody know what this means and how to correct the problem?


Hmm.  The silence on this problem is, well, scary.  Maybe
nobody is actually working on UltraPenguin anymore?

I did find out that the machine in question is an Ultra-30, if
that helps.  Also, the message is apparently coming from Linux
itself:

/usr/src/linux-2.1.107/linux/arch/sparc64/mm/init.c:

...


#define MAX_TRANSLATIONS 64
static inline void inherit_prom_mappings(void)
{
        struct linux_prom_translation transl[MAX_TRANSLATIONS];
        pgd_t *pgdp;
        pmd_t *pmdp;
        pte_t *ptep;
        int node, n, i;

        node = prom_finddevice("/virtual-memory");
        if ((n = prom_getproperty(node, "translations", (char *) transl,
                                  sizeof(transl))) = -1) {
                prom_printf("Couldn't get translation property\n");
                prom_halt();
        }


I have no real experience with Ultra's, but if somebody could
give me the low down on what this code is trying to do, I could
investigate it further.

-Rick

-- 
Rick Richardson        Sr. Techno-something   Its 1993 again, and I don't have
Digi Intl.             Email: rick@dgii.com   a Web page.
11001 Bren Rd. East    Fax:   (612) 912-4955  
Minnetonka, MN 55343   Tel:   (612) 912-3212  
