From: Daz <daz@undertaker.homeip.net>
Date: Thu, 25 Jan 2001 17:16:59 +0000
Subject: Re: Ultra4000 and kernel 2.4.0
Message-Id: <marc-linux-ultrasparc-98044261124866@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98043007617176@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98043007617176@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

That worked!!  muchas gracias!!   Now I just have to go back to fixing
that dang soc problem.....grumble...grumble...



David
On Thu, 25 Jan 2001, David
S. Miller wrote:

> 
> Please try this patch, thanks:
> 
> --- drivers/sbus/sbus.c.~1~	Tue Nov 28 08:33:08 2000
> +++ drivers/sbus/sbus.c	Thu Jan 25 07:34:01 2001
> @@ -238,10 +238,14 @@
>  					break;
>  			}
>  			if (rngnum = num_ranges) {
> -				prom_printf("sbus_apply_ranges: Cannot find matching "
> -					    "range nregs[%d] nranges[%d].\n",
> -					    num_regs, num_ranges);
> -				prom_halt();
> +				/* We used to flag this as an error.  Actually
> +				 * some devices do not report the regs as we expect.
> +				 * For example, see SUNW,pln device.  In that case
> +				 * the reg property is in a format internal to that
> +				 * node, ie. it is not in the SBUS register space
> +				 * per se. -DaveM
> +				 */
> +				return;
>  			}
>  			regs[regnum].which_io = ranges[rngnum].ot_parent_space;
>  			regs[regnum].phys_addr += ranges[rngnum].ot_parent_base;
> 

-- 
"I find your lack of faith disturbing."
--Darth Vader

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
