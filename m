From: Peter Jones <pjones@redhat.com>
Date: Mon, 15 Mar 1999 16:42:28 +0000
Subject: Re: menuconfig not ok
Message-Id: <marc-linux-ultrasparc-92151690623790@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92151387520817@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92151387520817@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This should be fixed in CVS.  Information is available at
http://cvs.on.openprojects.net/

 -- Peter

"What is a magician but a practicing theorist?"
		-- Kenobi

On Mon, 15 Mar 1999, Thierry Lafage wrote:

> 
> Hi, 
> 
> Just trying to configure ultrapenguin-1.1.9 kernel 2.2.2 with
> menuconfig. While trying to put <N> in 
> Fibre Channel support  ---> Fibre Channel and FC4 SCSI support
> 
> Menuconfig has encountered a possible error in one of the kernel's
> configuration files and is unable to continue.  Here is the error
> report:
> 
>  Q> scripts/Menuconfig: =: command not found
> 
> Please report this to the maintainer <mec@shout.net>.  You may also
> send a problem report to <linux-kernel@vger.rutgers.edu>.
> 
> Please indicate the kernel version you are trying to configure and
> which menu you were trying to enter when this error occurred.
> 
> make: *** [menuconfig] Error 1
> 
> 
> Thierry Lafage.
> 
