From: Derrick J Brashear <shadow@dementia.org>
Date: Fri, 13 Nov 1998 14:43:42 +0000
Subject: Re: no go on Ultra 10 ?
Message-Id: <marc-linux-ultrasparc-91097116116307@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91088532111774@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91088532111774@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 12 Nov 1998, Jakub Jelinek wrote:

> I guess your Mach64 is being used as the console and not Creator.
> To find this out, do
> boot net console=prom
> to see which fb is going to be used.
> Kernels prior to yesterday had higher priority for Mach64 than for Creator.
> I guess that's your case. What you can do:
> either connect a monitor to mach64, or give it something like
> boot video=atyfb:off
> or use 
> boot video=map:1

(Having just been hit by my ultra 1 with a cgsix and creator getting that
far and losing, and still not having figured out how to get it to boot...)

I suppose figuring things out based on the sbus probe list is out of the
question?

-D
