From: Matthew Jacob <mjacob@feral.com>
Date: Fri, 11 Feb 2000 21:04:08 +0000
Subject: Re: serial console
Message-Id: <marc-linux-ultrasparc-95031148029677@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95030299721929@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95030299721929@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Messages sent directly to the prom seem okay, i.e. at the'ok' prompt or via
> prom_printf() calls.  I tried various incantations of the serial= option to
> noavail.  This problem is only when linux is booted, if I shutdown the OS
> the console comes back and I can interact with OBP.
> 
> It seems that if I power cycle the machine the serial console will work,
> but on subsequent reboots it does not.  Has anyone else encountered this?
> The behavior is the same whether I am booting a 2.2.x or 2.3.x kernel.
> 
> Any suggestions would be greatly appreciated.

define 'not work'? I've had the serial console just be 'strange' when running
it in a screen session so I just type 'reset'.
