From: Ching Huat Yeo <yeo@donovan.com.sg>
Date: Thu, 19 Nov 1998 10:00:29 +0000
Subject: Re: detail on how to install UltraPenguin on Sun Ultra10
Message-Id: <marc-linux-ultrasparc-91150194416226@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91142512809126@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91142512809126@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello Jakub,

Thanks a lot for your info.  Sadly that you are the only one who replied!

Something still want your help to comfirm my doubt.

1.  Is it anyway i can get a CD media of the UltraPenguin 1.1?

2. My Ultra 10 is not connecting to the internet.  We only have LAN, there is
only one PC connecting with modem! so is it mean that i can not configure my
Ultra10 as TFTP server??

3. rarp command is not found anywhere in my Ultra10, where is it?

Thanks and appreciate your help!

Best regards,
Ching Yeo

Jakub Jelinek wrote:

> >
> > Hello all Linux experts,
> >
> > I am a newbie to Linux but have experience with Sun Solaris.  I have a
> > Ultra10 (solaris2.6), and will like to install UltraPenguin to evaluate
> > this much appraise freeware.  So far, i have search around so many
> > archive and none telling me the detailed procedure to install UltraLinux
> > from scratch. I don't know where should i start to do the installation
> > even after searching around the net for such a long time
> >
> > The best i find is from Korey's "Installing Ultra Linux 1.0.9 on
> > Ultra5",
> >  http://brethren.dyn.ml.org:8080/sunUltra5/installingUltrapenguin.html
> >
> > but he also did not mention what files i need to download, and where to
> > put it (on which hard disk)...and all other details...
> >
> > Do i need another Sun machine (i have a Sun Sparc 20 running Solaris2.5
> > also) in order to do the installation? I am thinking like storing all
> > the distribution files on one machine, and boot it from another
> > machine!  Or can i store the distribution and boot with the Ultra10?
> >
> > Is it anyway to get a CD media?? i heard that this is the simplest and
> > easiest way to do it.
> >
> > Can someone kindly show me all the detailed steps to do a installation
> > of UltraPenguin on Ultra10?
> >
> > I am so frustrated that installing UltraPenguin is so much difficult
> > compare to what i did with solaris2.6 (just boot cdrom)!
>
> It is not all that difficult. If you have the CD-ROM
> (ftp://1000e.ms.mff.cuni.cz/private/local/jj/UltraLinux/up11cd/
> then, unless your CD-ROM hangs from Adaptec/NCR SCSI, you should be able
> just to boot that CD-ROM. If you have CD-ROM on Adaptec/NCR SCSI, then you
> will need to take the images/tftpboot.img from the CD-ROM and put it on some
> tftp server (detailed instructions on setting up a tftp server are on
> http://ultra.penguin.cz/), boot net and specify Local CD-ROM as a method of
> installation.
> If you don't want to download and burn a CD-ROM, just download the
> images/tftpboot.img from any ultrapenguin-1.1 mirror (listed in
> ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/.message) or the master site,
> put it on tftp server, boot net, specify installation method FTP and choose
> the FTP you want to download (and append sparc/ to the path listed in my
> .message files, e.g. ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/sparc/)
>
> If you have both Creator and Mach64 (=ATY, =PGX), then make sure you pass
> video=atyfb:off parameter during boot as well
> (e.g. boot cdrom linux video=atyfb:off or boot net video=atyfb:off).
> That's about it.
> If you'll have some problems, come back on the list.
>
> Cheers,
>     Jakub
> ___________________________________________________________________
> Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
> Administrator of SunSITE Czech Republic, MFF, Charles University
> ___________________________________________________________________
> Ultralinux - first 64bit OS to take full power of the UltraSparc
> Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
> ___________________________________________________________________
