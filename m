From: Marco Colombo <marco@esi.it>
Date: Fri, 08 Feb 2002 14:07:11 +0000
Subject: Re: [RNDGETENTCNT ioctl]
Message-Id: <marc-linux-ultrasparc-101317727425530@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101311460402385@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101311460402385@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On 7 Feb 2002, Eric wrote:

> Add a COMPATIBLE_IOCTL entry for RNDGETENTCNT into ioctl32.c
> and you may wish to modify the type of avail_entropy to one
> that is explicitly sized (int32_t or somesuch) for cross-platform
> friendliness.
> 
> Probably something similar to the following as a starting point:
> 
> --- ioctl32.c	Fri Feb  1 18:18:21 2002
> +++ ioctl32.c.new	Thu Feb  7 12:33:56 2002
> @@ -96,6 +96,7 @@
>  #include <linux/usb.h>
>  #include <linux/usbdevice_fs.h>
>  #include <linux/nbd.h>
> +#include <linux/random.h>
>  
>  /* Use this to get at 32-bit user passed pointers. 
>     See sys_sparc32.c for description about these. */
> @@ -4529,6 +4530,8 @@
>  COMPATIBLE_IOCTL(WIOCSTART)
>  COMPATIBLE_IOCTL(WIOCSTOP)
>  COMPATIBLE_IOCTL(WIOCGSTAT)
> +/* Big R */
> +COMPATIBLE_IOCTL(RNDGETENTCNT)
>  /* Bluetooth ioctls */
>  COMPATIBLE_IOCTL(HCIDEVUP)
>  COMPATIBLE_IOCTL(HCIDEVDOWN)

Eric, thanks for your answer.

I'm aware that vendor-patched trees are quite unsupported on general
kernel lists, but, please, bear with me a little... to which kernel tree
does the above apply? I'm asking because:

# find /usr/src/linux/. -type f | xargs fgrep COMPATIBLE_IOCTL
<no results>

# rpm -q kernel-source
kernel-source-2.2.19-6.2.12

that's the Red Hat kernel tree.

I'm pretty willing to grab another tree and compile it, but I'd like to
know which one in advance instead of going on by trial & error. The system
is Red Hat 6.2 so I need a 2.2.x kernel.

.TM.
-- 
      ____/  ____/   /
     /      /       /			Marco Colombo
    ___/  ___  /   /		      Technical Manager
   /          /   /			 ESI s.r.l.
 _____/ _____/  _/		       Colombo@ESI.it

