From: gert@greenie.muc.de (Gert Doering)
Date: Fri, 17 Jul 1998 17:35:20 +0000
Subject: Re: Ultra penguin
Message-Id: <marc-linux-ultrasparc-90222358531061@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531058@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531058@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

D.Forbes wrote:
> This may sound a bit naive but....
> 
> I am trying to perform an FTP install of UltraPenguin 1.0.9 onto an 
> Ultra10. The first step involves using rawrite to put the boot image 
> file onto a floppy disk.
> 
> The image file is 2.5MB and a floppy disk is 1.44MB. As I suspected, 
> rawrite cannot put tftpboot.img onto the floppy disk.
> 
> Am I missing something here?

Yes - "tftp"boot.img is meant to be bootet by "tftp"...

gert

-- 
USENET is *not* the non-clickable part of WWW!
                                                           //www.muc.de/~gert/
Gert Doering - Munich, Germany                             gert@greenie.muc.de
fax: +49-89-35655025                        gert.doering@physik.tu-muenchen.de
