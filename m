From: Shawn Hooton <shooton@cms.cendant.com>
Date: Wed, 09 Feb 2000 17:08:41 +0000
Subject: Re: CD ripper/MP3 encoder
MIME-Version: 1
Content-Type: multipart/mixed; boundary="------------913671C27B9ECDEF7F35CC29"
Message-Id: <marc-linux-ultrasparc-95011676900563@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95005914224137@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95005914224137@msgid-missing>
To: ultralinux@vger.kernel.org

This is a multi-part message in MIME format.
--------------913671C27B9ECDEF7F35CC29
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

I have no idea at what speed I rip audio at, how can you tell using
cdparanoia?

I did this:

> time cdparanoia -S 3 1
cdparanoia III release 9.6 (August 17, 1999)
(C) 1999 Monty <monty@xiph.org> and Xiphophorus

Report bugs to paranoia@xiph.org
http://www.xiph.org/paranoia/


Ripping from sector       0 (track  1 [0:00.00])
          to sector   13716 (track  1 [3:02.66])

outputting to cdda.wav

 (== PROGRESS == [------------------------------| 013716 00 ] == :^D *
==)

Done.


7.55user 2.09system 1:59.37elapsed 8%CPU (0avgtext+0avgdata
0maxresident)k
0inputs+0outputs (135major+31498minor)pagefaults 0swaps
[11:55:09] shooton@diablo {~/tmp}
> ls -l
total 31544
-rw-r--r--   1 shooton  devadm   32262428 Feb  9 11:55 cdda.wav


Using the same model Toshiba CDROM(5401 I think) on Solaris I know for a
fact that it can rip @ 3x using this program:

http://www.cybersoft.org/galette/

Aaron T Porter wrote:
> 
> On Wed, 9 Feb 2000, Shawn Hooton wrote:
> 
> > This is easy!  I have a PII 400 with 1 2GB SCSI2 HD and a 4x SCSI
> > toshiba CDROM and I encode, rip, and play mp3s all the time.  In fact I
> > have even compiled code during this process!  Note:  Esd had to be
> > reniced to -10
> 
>         Do you have a SCSI drive that will read audio tracks at above 1x?
>         If so, which brand/model?
> 
> +--------------------------------------------------------------------------+
> | Aaron T Porter                      | If you can't code it -- support it |
> | atporter@primate.net                | Help make Linux work for everyone  |
> | owner-linux-kernel@vger.rutgers.edu | Subscribe to linux-admin today.    |
> +--------------------------------------------------------------------------+
--------------913671C27B9ECDEF7F35CC29
Content-Type: text/x-vcard; charset=us-ascii;
 name="shooton.vcf"
Content-Transfer-Encoding: 7bit
Content-Description: Card for Shawn Hooton
Content-Disposition: attachment;
 filename="shooton.vcf"

begin:vcard 
n:Hooton;Shawn
tel;cell:(614) 419-4996
tel;fax:(614) 652-5401
tel;work:(614) 652-5058
x-mozilla-html:FALSE
org:Cendant Technical Services;Good, Quick, Cheap: Choose Two.
adr:;;;;;;
version:2.1
email;internet:shooton@cms.cendant.com
title:Unix Wizard
x-mozilla-cpt:;5632
fn:Shawn Hooton
end:vcard

--------------913671C27B9ECDEF7F35CC29--
