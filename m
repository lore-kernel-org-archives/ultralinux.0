From: "von Essen, Matthias" <VON_ESSEN@ntn04.FEV.de>
Date: Mon, 08 Jun 1998 09:27:18 +0000
Subject: Re: more on tftpboot/IPC/UP 1.0.9
Message-Id: <marc-linux-ultrasparc-90222357630993@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org




> >Since I now (yay!) have UP 1.0.9 in a bootable form, I'm not
> desperate
> >for this to be resolved, but I wonder if it is a general issue, given
> >that the earlier tftpboot images didn't boot my IPCs.
> 
> I have a SparcStation 2 (PROM version unknown -- dmesg reports "Boot
> Prom Version 2 Revision 2") that will suck down the tftp image but
> freezes immeditely afterwards.
> 
> I'm using the tftp image from the UltraLinux mirror at
> ftp.cobaltmicro.com.
> 
The tftpboot.img (2,582,793 bytes) seems to have difficulties with the
sun4c-arch. I have made the same experience on my SS1+. It works o.k.
with sun4m.arch.

-Mathias
