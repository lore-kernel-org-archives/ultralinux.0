From: Matthew Wilcox <matthew@wil.cx>
Date: Tue, 10 Oct 2006 14:28:09 +0000
Subject: Re: [PATCH 2/4] [PATCH] Use pci_generic_prep_mwi on sparc64
Message-Id: <20061010142809.GA8993@parisc-linux.org>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


git-send-email really needs to be more robust ... adding DaveM and the
appropriate mailing list to the cc.

On Tue, Oct 10, 2006 at 08:01:20AM -0600, Matthew Wilcox wrote:
> From: "David S. Miller <davem@davemloft.net>", ultralinux@vger.kernel.org
> 
> The setting of the CACHE_LINE_SIZE register in sparc64's pci
> initialisation code isn't quite adequate as the device may have
> incompatible requirements.  The generic code tests for this, so switch
> sparc64 over to using it.
> 
> Since sparc64 has different L1 cache line size and PCI cache line size,
> it would need to override the generic code like i386 and ia64 do.  We
> know what the cache line size is at compile time though, so introduce a
> new optional constant PCI_CACHE_LINE_BYTES.
> 
> Signed-off-by: Matthew Wilcox <matthew@wil.cx>
> ---
>  arch/sparc64/kernel/pci.c |    9 ---------
>  drivers/pci/pci.c         |    8 +++++++-
>  include/asm-sparc64/pci.h |    6 ++----
>  3 files changed, 9 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/sparc64/kernel/pci.c b/arch/sparc64/kernel/pci.c
> index e02f01b..dfc41cd 100644
> --- a/arch/sparc64/kernel/pci.c
> +++ b/arch/sparc64/kernel/pci.c
> @@ -646,13 +646,4 @@ int pci_domain_nr(struct pci_bus *pbus)
>  }
>  EXPORT_SYMBOL(pci_domain_nr);
>  
> -int pcibios_prep_mwi(struct pci_dev *dev)
> -{
> -	/* We set correct PCI_CACHE_LINE_SIZE register values for every
> -	 * device probed on this platform.  So there is nothing to check
> -	 * and this always succeeds.
> -	 */
> -	return 0;
> -}
> -
>  #endif /* !(CONFIG_PCI) */
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index a544997..2b93aaf 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -832,8 +832,14 @@ pci_set_master(struct pci_dev *dev)
>  }
>  
>  #ifndef HAVE_ARCH_PCI_MWI
> +
> +#ifndef PCI_CACHE_LINE_BYTES
> +#define PCI_CACHE_LINE_BYTES L1_CACHE_BYTES
> +#endif
> +
>  /* This can be overridden by arch code. */
> -u8 pci_cache_line_size = L1_CACHE_BYTES >> 2;
> +/* Don't forget this is measured in 32-bit words, not bytes */
> +u8 pci_cache_line_size = PCI_CACHE_LINE_BYTES / 4;
>  
>  /**
>   * pci_generic_prep_mwi - helper function for pci_set_mwi
> diff --git a/include/asm-sparc64/pci.h b/include/asm-sparc64/pci.h
> index e1ea67b..ca65602 100644
> --- a/include/asm-sparc64/pci.h
> +++ b/include/asm-sparc64/pci.h
> @@ -18,6 +18,8 @@ #define PCIBIOS_MIN_MEM		0UL
>  
>  #define PCI_IRQ_NONE		0xffffffff
>  
> +#define PCI_CACHE_LINE_BYTES	64
> +
>  static inline void pcibios_set_master(struct pci_dev *dev)
>  {
>  	/* No special bus mastering setup handling */
> @@ -291,10 +293,6 @@ extern int pci_mmap_page_range(struct pc
>  			       enum pci_mmap_state mmap_state,
>  			       int write_combine);
>  
> -/* Platform specific MWI support. */
> -#define HAVE_ARCH_PCI_MWI
> -extern int pcibios_prep_mwi(struct pci_dev *dev);
> -
>  extern void
>  pcibios_resource_to_bus(struct pci_dev *dev, struct pci_bus_region *region,
>  			struct resource *res);
> -- 
> 1.4.1.1
