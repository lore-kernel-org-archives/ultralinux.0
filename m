From: Saporito Fausto <qeifasa@armonia.tei.ericsson.se>
Date: Wed, 25 Nov 1998 15:42:24 +0000
Subject: bpp and lpd in 2.1.129
Message-Id: <marc-linux-ultrasparc-91203569211035@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

i'm trying to use a parallel printer (using bpp driver) with my Ultra1.
The printer is a Dataproducts LZR 888 (HP LJ4 compatible).
The printtool detected the printer without errors, the device is
/dev/lp0 and there is space available for the printer queue.
When I run lpr, in the /var/log/messages I have

Nov 25 16:31:32 einstein lpd[1150]: restarting b50lp
Nov 25 16:32:03 einstein last message repeated 23797 times

i.e. lpd restarts and take the all CPU time, about 70%.

The DATA led on the printer isn't flashing, then no datas was sent to
printer by bpp.

The bpp driver is a module, when I load it in the kernel, I had in the
/var/log/messages, this message:

Nov 25 15:48:07 einstein kernel: bpp0.map_bpp:
0x1ff.00000000ec800000[0x1c] if34144
Nov 25 15:48:07 einstein kernel: bpp0: reset with 0xa0000100 .. done
with csr=0xa0000100 ocr=0x200a
Nov 25 15:48:07 einstein kernel: bpp0: DMA2 at 0xfffff9ffec800000

lpq tells the printer is ready and printing, and no errors are displayed
neither on the screen, neither in the messages file.

Any idea?

thanks in advance,
Fausto
