From: Fredrik Lundholm <exce7@ce.chalmers.se>
Date: Tue, 29 Dec 1998 14:24:30 +0000
Subject: Re: Ultralinux 1.1.9 brick wall....
Message-Id: <marc-linux-ultrasparc-91494445103825@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91493348232595@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91493348232595@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

> I pulled down the up-1.1.9.iso image from doc.ic.ac.uk's mirror site, and
> wrote a cd. 

On an E4000 w 14CPUs the install goes well. (from CD pulled of ftp.sunet.se)
When I reboot it after the install the machine hangs at 
'root child is f002d3a8'
There is no graphics card in the machine, would a console=serial fix the
situation?

(it takes a few minutes to reboot the sucker so I would want to be reasonably
sure it works, also its tedious to manually type in the prom path to the 
boot-disk :)

/wfr/
-- 
Fredrik Lundholm
exce7@ce.chalmers.se
