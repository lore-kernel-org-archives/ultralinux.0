From: Rich Sahlender <rsahlen@voicenet.com>
Date: Fri, 30 Oct 1998 13:51:44 +0000
Subject: Re: sparc64 mt race?
Message-Id: <marc-linux-ultrasparc-90975673021163@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90967139815468@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90967139815468@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Which model ultra, and which scsi controller?

Eddie C. Dost wrote:
> > Using the latest 2.1.126 from vger cvs with ultrapenguin-1.0.9 on an
> > Ultra1, a simple "mt -f /dev/st0 off" to unload a tape sends the cpu
> > to 100%. Running processes continue but cannot terminate, new processes
> > will not start. dmesg shows:
> 
> No problems observed with my Tandberg SLR 5 tape.
> 
> 
> Eddie.
> ecd@skynet.be
> 
