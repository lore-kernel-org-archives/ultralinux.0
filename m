From: Mark Clegg <mark.clegg@scoutmail.org.uk>
Date: Sat, 20 Mar 2004 19:56:17 +0000
Subject: PROBLEM: 2.6.4 Sun Crossbow Mouse fails on Sun Ultra 5
Message-Id: <200403201956.17926.mark.clegg@scoutmail.org.uk>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I've been having problems getting the Sun Crossbow
mouse to work on a Sun Ultra-5, connected via a Type-6 UK
keyboard.

It appears that the SU driver does auto-baudrate detection
on the mouse port by detecting line break conditions.

Under 2.4.x this works fine, but under 2.6.x the break
condition never seems to get raised on my Ultra 5
unless either...

a) You warm boot into 2.6 from 2.4    - or -
b) You cold boot into 2.6, unplug the mouse, and plug it back in.

It strikes me that a baud-rate mismatch will also result in
framing errors so I've patched drivers/serial/sunsu.c to
accept either a break or framing error to trigger the
baudrate change.

I don't have any other sparcs available, so my testing is
minimal but I am hoping for feedback from other sparc
users on the gentoo sparc forum.

Mark.



--- sunsu.c     2004-02-24 19:59:22.000000000 +0000 
 +++ new.sunsu.c 2004-03-20 19:07:33.275554791 +0000 
 @@ -498,6 +498,8 @@ 
         sunsu_change_speed(&up->port, up->cflag, 0, quot); 
 
         spin_lock(&up->port.lock); 
 + 
 +       printk("Adjusted mouse to %d baud\n",new_baud); 
  } 
 
  static void receive_kbd_ms_chars(struct uart_sunsu_port *up, struct pt_regs *regs, int is_break) 
 @@ -537,9 +539,9 @@ 
         if (!(serial_in(up, UART_IIR) & UART_IIR_NO_INT)) { 
                 unsigned char status = serial_inp(up, UART_LSR); 
 
 -               if ((status & UART_LSR_DR) || (status & UART_LSR_BI)) 
 +               if ((status & UART_LSR_DR) || (status & UART_LSR_BI) || (status & UART_LSR_FE)) 
                         receive_kbd_ms_chars(up, regs, 
 -                                            (status & UART_LSR_BI) != 0); 
 +                                            (status & (UART_LSR_BI | UART_LSR_FE)) != 0); 
         } 
 
         return IRQ_HANDLED; 
