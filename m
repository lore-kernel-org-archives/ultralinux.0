From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Tue, 19 Mar 2002 19:59:21 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101656799110247@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 19 Mar 2002 00:19:46 -0800 (PST)
"David S. Miller" <davem@redhat.com> wrote:

> 
> Please try 2.4.19-pre3 or later.  There were some problems in 2.4.18
> vanilla on sparc64.

Thanks Dave,

I had to fix a few things to get this compiling:

   1) Edited include/asm-sparc64/pgtable.h adding :

      #define flush_icache_user_range(vma,pg,adr,len)   do { } while (0)

   2) I got compile errors in the ppp, ide and usb areas so I disabled all of
      these (I don't need them at the moment).

I then got a working compile with an SMP kernel which still didn't boot. The
last boot message I see is this:

    ttyS01 at 0x1fff1400040 (irq = 12,7eb) is a SAB82532 V3.2
    Console: ttyS0 (SAB82532)
    power: Control reg at 000001fff1724000 ... not using powerd.
    Linux NET4.0 for Linux 2.4
    Based upon Swansea University Computer Society NET3.039
    Initializing RT netlink socket
    Starting kswapd
    pty: 256 Unix98 ptys configured
    rtc_init: no PC rtc found
    block: 128 slots per queue, batch2
    sunhme.c:v1.99 12/Sep/99 David S. Miller (davem@redhat.com)
    eth0: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet 08:00:20:a1:70:11 
    Linux video capture interface: v1.00
    SCSI subsystem driver Revision: 1.00
    qlogicfc0 : new isp2x00 revision ID (4)
    qlogicfc0 : link is not up

I am now going to try and disable fiber channel support and see if I can get 
it any further.

Cheers,
Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
The mouse has been moved. Windows must be restarted for the change
to take effect. Reboot now?
