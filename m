From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Tue, 19 Mar 2002 23:55:22 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101658236722288@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 19 Mar 2002 14:30:54 -0800 (PST)
"David S. Miller" <davem@redhat.com> wrote:

> It could definitely be the problem.  Where is this fibre channel
> interface, on the motherboard or on a PCI card?  

I don't currently have physical access to this machine so I can't tell you 
this till tomorrow.

> If so, what is this PCI card?

Its the second one from the bottom.

root@razor > lspci 
00:00.0 Host bridge: Sun Microsystems Computer Corp. Psycho PCI Bus Module
00:01.0 Bridge: Sun Microsystems Computer Corp. EBUS (rev 01)
00:01.1 Ethernet controller: Sun Microsystems Computer Corp. Happy Meal (rev 01)
00:03.0 SCSI storage controller: LSI Logic / Symbios Logic (formerly NCR) 53c875 (rev 14)
00:03.1 SCSI storage controller: LSI Logic / Symbios Logic (formerly NCR) 53c875 (rev 14)
00:04.0 SCSI storage controller: QLogic Corp. QLA2100 64-bit Fibre Channel Adapter (rev 04)
01:00.0 Host bridge: Sun Microsystems Computer Corp. Psycho PCI Bus Module

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
"Software is largely a service industry operating under the persistent 
but unfounded delusion that it is a manufacturing industry."
-- Eric S. Raymond
