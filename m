From: "David S. Miller" <davem@redhat.com>
Date: Wed, 20 Mar 2002 04:23:01 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101659941502280@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Erik de Castro Lopo <erikd@mega-nerd.com>
   Date: Wed, 20 Mar 2002 15:11:20 +1100

   The other weird thing is that even though I have disabled "Fibre Channel 
   support" and "Fusion MPT device support" in make menuconfig and did a make
   clean before doing make dep, I still get this qlogicfc0 device in the
   boot messages. I have even made sure that I deleted al qlogic* drivers
   in the /lib/modules/2.4.19-pre3 tree.
   
It is listed under SCSI as CONFIG_SCSI_QLOGICFC, not fibre channel.

   Here's the "/usr/sbin/prtconf -pv" (hey I thought that was a Solaris 
   command ???) output:
   
       https://mega-nerd.net/prtconf-pv.txt
   
It is a Solaris command, we just reimplemented it for Linux.
Thanks.
