From: Eric Brower <ebrower@gmail.com>
Date: Mon, 04 Apr 2005 18:11:01 +0000
Subject: Re: Weird Mouse Behaviour with 2.6
Message-Id: <ec7cefb050404111120b5c75@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Apr 3, 2005 12:32 PM, Tomas Cernaj <tcernaj@gmx.de> wrote:
> Am Sonntag, den 03.04.2005, 12:09 +0200 schrieb Tomas Cernaj:
> > David S. Miller <davem@davemloft.net> wrote:
> >
> > [... mouse problem on ultras ...]
> >
> > > Yes, there is some problem initializing the serial line that the
> > > keyboard and mouse use.  The break characters that get detected
> > > when the baud rate is incorrect are not showing up for some reason.
> > >
> > > What kind of machine is this?  It only happens with certain serial
> > > controllers, not all, which is why your machine type is important.

Not sure if this is related, but I've been tracking down serial
(console) issues on an E250 with 2.6.12rc1, which uses sunsab as the
console.

I can't claim I fully understand the new serial/console code yet, but
the following seems broken:

In tty_ioctl.c tty_wait_until_sent() if the timeout variable is set to
zero (which many callers do explicitly) it gets reassigned to
MAX_SCHEDULE_TIMEOUT (this is LONG_MAX).  If there are no characters
waiting to be sent (!tty->driver->chars_in_buffer(tty)) we drop out of
our loop and supply the timeout variable to uart_wait_until_sent
(tty->driver->wait_until_sent).  The problem is uart_wait_until_sent
is specified with a timeout argument of type int, not long.  This
becomes -1 in uart_wait_until_sent, which I don't think is intended. 
If your port->timeout value in this function is also zero (as seems
the case with sunsab), this seems doubly bad and leads to massive
mdelay times in uart_wait_until_sent.  This will appear to you as a
hung getty.

My current workaround, until i understand the lay of the land a bit
better, is the following.  I'd wager the better bet is to modify
uart_wait_until_sent to take a "long" (or unsigned long) argument for
timeout rather than an "int" arg.  This works on x86 only as a
side-effect.

=== tty_ioctl.c 1.19 vs edited ==--- 1.19/drivers/char/tty_ioctl.c       2005-01-10 17:29:36 -08:00
+++ edited/tty_ioctl.c  2005-04-01 16:14:31 -08:00
@@ -58,8 +58,10 @@
                set_current_state(TASK_INTERRUPTIBLE);
                if (signal_pending(current))
                        goto stop_waiting;
-               if (!tty->driver->chars_in_buffer(tty))
+               if (!tty->driver->chars_in_buffer(tty)) {
+                       timeout = 0;
                        break;
+               }
                timeout = schedule_timeout(timeout);
        } while (timeout);
        if (tty->driver->wait_until_sent)

To complicate things, my GCC [gcc (GCC) 3.3.5 (Debian 1:3.3.5-5)] 
doesn't seem to properly initialize char_time to 0 with the syntax
"unsigned long char_time, expire;" in uart_wait_until_sent() or
something is getting trashed (I've not investigated that much yet).

Like I said, I don't quite understand the new serial subsystem yet,
but it seems like a lot of side-effects are in play.

-- 
E
