From: Eric Brower <ebrower@usa.net>
Date: Wed, 10 Dec 2003 17:38:28 +0000
Subject: Re: Installing Linux on a E250 with serial console: cannot get the
Message-Id: <marc-linux-ultrasparc-107107799421855@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107094852316886@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107094852316886@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

 From the RSC Users Guide:

> ok diag-output-to ttya
> ok setenv input-device keyboard
> ok setenv output-device screen

You should be able to use the serial connector on the RSC card to boot 
to OBP.  From there, run the above commands and you'll have a console on 
the standard serial port after upon reboot.  I've not removed the RSC card.

Take a look at docs.sun.com (search for RSC) for information on RSC and 
the system console.

E

William (BT) Griffin wrote:
> do you have the telnet card in the machine? and if its configured you wont
> get anything from the serial connection in normal power-on mode. I had this
> problem and just removed the card and then I had serial output.
> 
> William
> 
> 
> -----Original Message-----
> From: ultralinux-owner@vger.kernel.org
> [mailto:ultralinux-owner@vger.kernel.org]On Behalf Of Stephane
> Bortzmeyer
> Sent: Tuesday, December 09, 2003 12:39 AM
> To: ultralinux@vger.kernel.org
> Subject: Installing Linux on a E250 with serial console: cannot get the
> boot prompt
> 
> 
> Hello, everybody,
> 
> I try to boot a Sun E250 which has no monitor or keyboard. Following
> the instructions in the UltraLinux FAQ
> <URL:http://www.ultralinux.org/faq.html>, I configured a PC with
> FreeBSD and minicom to act as the serial console. (I also tried
> minicom on a RedHat, without more success.)
> 
> When I power on the machine in the Diagnostics position, I see the
> boot messages. So my cables and emulator are OK. But sending Break
> with Ctrl-A F does not seem to have any result: I cannot get the boot
> prompt (ok).
> 
> When I power on the machine in Power-On mode, I get nothing on the
> screen, not one message.
> 
> Last screen of messages in Diagnostics mode (after that, nothing
> moves):
> 
> Primary I/O probing
> Probing /pci@1f,4000 at Device 1  network
> Probing /pci@1f,4000 at Device 3  scsi disk tape scsi disk tape
> Probing /pci@1f,4000 at Device 2  Nothing there
> Probing /pci@1f,4000 at Device 4  Nothing there
> Probing /pci@1f,4000 at Device 5  Nothing there
> Probing /pci@1f,2000 at Device 0  This slot excluded from probing...
> Probing /pci@1f,2000 at Device 1  Nothing there
> Probing /pci@1f,2000 at Device 2  Nothing there
> Probing /pci@1f,2000 at Device 3  Nothing there
> Probing /pci@1f,2000 at Device 4  Nothing there
> Probing /pci@1f,2000 at Device 5  Nothing there
> 
> -
> To unsubscribe from this list: send the line "unsubscribe ultralinux" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> -
> To unsubscribe from this list: send the line "unsubscribe ultralinux" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> .
> 

