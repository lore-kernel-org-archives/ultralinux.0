From: Eric H Kinzie <ekinzie@cmf.nrl.navy.mil>
Date: Fri, 05 Nov 1999 18:22:20 +0000
Subject: Re: Help with new kernel install with atm
Message-Id: <marc-linux-ultrasparc-94182832611163@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94182426304407@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94182426304407@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri Nov 05 13:02:38 -0500 1999, David Cooley wrote:
> At 12:19 PM 11/5/1999 -0500, amarin@udea.edu.co wrote:
[...]
> >when I reboot and select my new kernel the systen show this error :
> >
> >boot: linux-2.2.10
> >
> >Fatal error: Image too large to fit in destination
> >
> >
> >Any ideas?
> 
> gzip it and point silo.conf at the gzipped file.

Actually, I had this problem on a Sun as well and gzipping the kernel image
didn't help.  On boot, after the kernel is uncompressed, the same error
message appears.  The only way I found to get around this limitation was
to build the atm drivers as modules.

-- 
Eric H. Kinzie					Naval Research Laboratory
Network Engineer				4555 Overlook Ave
Tel 202.404.7029				Washington, D.C.  20375
