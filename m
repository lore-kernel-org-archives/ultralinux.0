From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 04 Nov 1998 14:50:28 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-91019453222899@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:
> > 
> > I retried installing on my Ultra5 today with Jakub's latest UP 1.0.9
> > update that he put there on Monday. The installation went fine right
> > up until it tried to make a boot disk. I put a floppy in the drive,
> > hit "Yes, make a boot disk" and the kernel log on VC 4 came up with:
> >     <4>floppy0: probe failed...
> >       (12 lines of the above)
> >     <4>end_request: I/O error, dev 02:00 (floppy), sector 0
> >     <7>VFS: Disk change detected on device 02:00
> > and the cycle then repeated indefinitely "probe failed" x 12 etc).
> > I killed the "bask mkbootdisk" process but the genromfs process
> > stuch in D state. That kept the loop device busy so that the
> > following "install SILO bootloader" couldn't do its
> > "insmod /modules/loop.o" and thus failed.
> 
> This is strange. My PCI fd (fdthree) works just fine, and I doubt there are
> more types of floppies on PCI machines. I know SBUS floppy is broken at the
> moment, but that's about it. Was the floppy working fine for you with
> previous kernels ever?

This is the first Linux kernel I've been able to try on it. It has
Solaris on it but, on thinking about it, I don't think I've ever
needed to use the diskette drive. I'll do some experiments. It
definitely is an fdthree.

> > I redid the installation from scratch and this time chose not to
> > make a boot diskette. Everything seemed to install perfectly this
> > time and at the "Congratulations...hit return to reboot" I did so.
> > Booting went fine up until the
> >     Adding swap...
> > line at which point there was a pause (30 secs to 1 minute perhaps)
> > before it went on with
> >     Swansea...
> >     IPX...
> >     sunhme.c:v1.2 ...
> >     eth0: HAPPY MEAL...
> >     eth0: Link is up using internal transceiver at 10Mb/s, Half Duplex
> > and then hung. Hitting the CapsLock key lit the light (I don't know if
> > that's relevant on sparc arch).
> 
> This is strange. Was the machine visible on the network (ie. could you ping
> to it)? Were interrupts going? What was the machine doing
> ({shift,alt,ctrl}+scroll lock)? Was Stop+A working? (go should work in these
> kernels already).

In hindsight, I suspect it had booted OK, but events happened as
follows: I powered down and up and it hung after printing the
    CMD646: MDMA enable
message. At this point the machine really did hang: Ctrl-ScrollLock
showed just three processes running: kernel tasks. I then power
cycled it again and tried again. This time it got past that message
and did the same as the previous time: sitting there doing nothing
after the "eth0: Link is up" line. Hitting Ctrl-ScrollLock from time
to time showed fsck running and then other things started. It ended
up with the usual kflushd, atd, crond stuff running and a single
getty. I could indeed ping it across the network and telnet to it to
get a login prompt. With only a root account, that was no good though.
Since the single getty clearly wasn't running on tty1 I went and got a
dumb terminal and plugged that in and, sure enough, could log in as
root there. Success! /etc/inittab has only one getty entry for console
and no others which semi-explains it. What's left to explain is why it
made /dev/console as a serial console. Now I *had* been using a
serial console (ttyb) for Solaris but using it to boot Linux came up
with the error
    Can't init console on serial line
(That's from the scrawl in my notebook so may be wrong). So then I did
    setenv output-device screen
    setenv input-device keyboard
    reset
from the boot prom and all my attempts at installing Linux were then
using the screen/keyboard. Perhaps something somewhere still "knows"
(incorrectly) that I want a serial console?

The upshot is that I now have a running, working Linux on the Ultra5
which should make it easier to debug some of the problems I've been
having. I'll try out the floppy drive and put back in the sunswift
hme/scsi card which had network problems during an attempted install.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
