From: Erik de Castro Lopo <erikd@mega-nerd.com>
Date: Wed, 20 Mar 2002 04:11:20 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101659945202506@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 19 Mar 2002 14:30:54 -0800 (PST)
"David S. Miller" <davem@redhat.com> wrote:

>    From: Erik de Castro Lopo <nospam@mega-nerd.com>
>    Date: Wed, 20 Mar 2002 06:59:21 +1100
> 
>        qlogicfc0 : new isp2x00 revision ID (4)
>        qlogicfc0 : link is not up
>    
>    I am now going to try and disable fiber channel support and see if
>    I can get it any further.
> 
> It could definitely be the problem.  

The other weird thing is that even though I have disabled "Fibre Channel 
support" and "Fusion MPT device support" in make menuconfig and did a make
clean before doing make dep, I still get this qlogicfc0 device in the
boot messages. I have even made sure that I deleted al qlogic* drivers
in the /lib/modules/2.4.19-pre3 tree.

To prevent this driver from being compiled into the kernel I had to copy 
the .config file out, do "make mrproper", copy the .config file back in,
make oldconfig and then "make dep" etc.

The upshot of all this is that I do finnaly have this machine booting a
SMP Sparc64 kernel :-) although IDE, PPOE, USB and fiber channel are 
disabled. I can start doing the work on this machine that i was hoping 
to do :->.

BTW, this device:

   00:04.0 SCSI storage controller: QLogic Corp. QLA2100 64-bit Fibre Channel Adapter (rev 04)

is indeed a plugin PCI card. I just asked someone to have a look at the
back end of the machine :-).

Here's the "/usr/sbin/prtconf -pv" (hey I thought that was a Solaris 
command ???) output:

    https://mega-nerd.net/prtconf-pv.txt


Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
Reporter: "What do you think of Western Civilisation?" 
M.K. Gandhi: "I think it would be a good idea." 
