From: Zwane Mwaikambo <zwane@arm.linux.org.uk>
Date: Sun, 26 Dec 2004 15:40:16 +0000
Subject: Re: [PATCH] sparc64: remove x86-specific SMP reference in Kconfig
Message-Id: <Pine.LNX.4.61.0412260839020.17702@montezuma.fsmlabs.com>
List-Id: <ultralinux.vger.kernel.org>
References: <20041226134715.11731.39190.49206@localhost.localdomain>
In-Reply-To: <20041226134715.11731.39190.49206@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Nelson <james4765@verizon.net>
Cc: ultralinux@vger.kernel.org, akpm@osdl.org, linux-kernel@vger.kernel.org

On Sun, 26 Dec 2004, James Nelson wrote:

> Remove inapplicable references to x86 SMP configuration in arch/sparc64/Kconfig.
> 
>  	  People using multiprocessor machines who say Y here should also say
>  	  Y to "Enhanced Real Time Clock Support", below. The "Advanced Power
>  	  Management" code will be disabled if you say Y here.

APM isn't applicable to sparc64 either.

>  	  See also the <file:Documentation/smp.txt>,
> -	  <file:Documentation/i386/IO-APIC.txt>,
>  	  <file:Documentation/nmi_watchdog.txt> and the SMP-HOWTO available at

Nor is the nmi watchdog.

