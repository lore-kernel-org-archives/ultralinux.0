From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Jun 1998 22:26:49 +0000
Subject: Re: Serial console?
Message-Id: <marc-linux-ultrasparc-90222357631039@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi,
> 
> Marc Duponcheel wrote:
> > PS: I could see some complaints about 'cua' being depreciated in favour of
> > 'ttyS' on first bootup. I'll check what this is about.
> 
> What it is: an attempt to get rid of the confusion caused by having pairs
> of devices for one physical serial port - make all users go away, then
> remove cua* in 2.3.
> 
> Why you are seeing this: no idea, some program is accessing cua*, but I
> have no idea which one...

setconsole program is broken, if it detects serial console, it ln -sf
/dev/console to /dev/cuaX. That is wrong with 2.1 kernels, where
/dev/console should be always character 5,1. Install program runs
setconsole, if it detects a serial console during install. So, either do you
install from framebuffer, or after install 
rm -f /dev/console
mknod /dev/console c 5 1

I promise to fix this soon, but as I mentioned in the last mail, we have to
get consoles working again with 2.1.107 first.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.106 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
