From: Felix Schmidt <fesc@force.de>
Date: Sat, 08 Aug 1998 10:53:12 +0000
Subject: Booting UltraLinux on UlatraSPARC-IIi system
Message-Id: <marc-linux-ultrasparc-90258733008734@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

i'm currently trying to install UltraLinux 1.0.9 on one of our UltraSPARC-IIi
based systems (not a Sun Board). 

I'm trying to boot via network using the tftpboot.img. When the image is loaded 
it terminates with the message

  27a800 TILO
 
  No serial devices found, bailing out.
  Program terminated

I have no frame buffer and keyboard, just a pure serial connection.
When loading the same image on an Ultra-10, also via serial, it works a little 
bit better (it boots until it gets a panic while attaching an Adapdec 2940UF/OW 
SCSI  controller).

The only difference between our board and the Ultra-10 with respect to the 
serial device is the lack of Sun's PCI-to-PCI bridge and different
addresses. This shouldn't be a problem if the OpenBoot tree is evaluated
properly.

I'd like to have a look at the sources, but i only have it in rpm format, which 
is of no use under Solaris. Is the source tree available as tar archive?


Cheers,

Felix.

_____________________________________________________________
Felix Schmidt                   FORCE COMPUTERS GmbH
Software Engineer               http://www.forcecomputers.com
                                tel: +49-89-60814-0
mailto:fesc@force.de            fax: +49-89-60814-376
