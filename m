From: Eric Brower <ebrower@gmail.com>
Date: Mon, 04 Apr 2005 20:22:37 +0000
Subject: Re: Weird Mouse Behaviour with 2.6
Message-Id: <ec7cefb05040413221c4c0da9@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb050404111120b5c75@mail.gmail.com>
In-Reply-To: <ec7cefb050404111120b5c75@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Apr 4, 2005 12:21 PM, David S. Miller <davem@davemloft.net> wrote:
> On Mon, 4 Apr 2005 11:11:01 -0700
> Eric Brower <ebrower@gmail.com> wrote:
> 
> > In tty_ioctl.c tty_wait_until_sent() if the timeout variable is set to
> > zero (which many callers do explicitly) it gets reassigned to
> > MAX_SCHEDULE_TIMEOUT (this is LONG_MAX).  If there are no characters
> > waiting to be sent (!tty->driver->chars_in_buffer(tty)) we drop out of
> > our loop and supply the timeout variable to uart_wait_until_sent
> > (tty->driver->wait_until_sent).  The problem is uart_wait_until_sent
> > is specified with a timeout argument of type int, not long.  This
> > becomes -1 in uart_wait_until_sent, which I don't think is intended.
> > If your port->timeout value in this function is also zero (as seems
> > the case with sunsab), this seems doubly bad and leads to massive
> > mdelay times in uart_wait_until_sent.  This will appear to you as a
> > hung getty.
> 
> Good catch.  That third argument should be "unsigned long timeout"
> indeed.  I've pointed this out in private email to Russell, Linus
> and Andrew.
> 
> uart_update_timeout() calls done by the driver (in this case sunsab.c)
> should be updating the port->timeout value properly.  Indeed, sunsab.c
> fails to call uart_update_timeout() at all.

I'll give your patch a shot in a little while-- I was playing around
with uart_update_timeout in sunsab.c as well.  It seems to me that
serial_core.c::uart_wait_until_sent() should assert if port->timeout
is 0 or bracket the following math

      char_time = (port->timeout - HZ/50) / port->fifosize;

otherwise we overflow.  Since I'm not too familiar with the
assumptions of this API, I don't know if an assert (BUG) or a check
(perhaps "if (port->timeout >= HZ/50)") is appropriate.

-- 
E
