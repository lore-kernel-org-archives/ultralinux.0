From: Peter Jones <pjones@redhat.com>
Date: Sat, 04 Sep 1999 08:43:02 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93643392813916@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 3 Sep 1999, David S. Miller wrote:

>    Date: Fri, 3 Sep 1999 15:58:26 -0400 (EDT)
>    From: Peter Jones <pjones@redhat.com>
> 
>    eww.  0x27bcc, bd0, and 0x213e0 look like:
> 
>    0000000000027bbc t vis13          (for both of the first two) and
>    0000000000213de0 T SwapHalfSpace
> 
>    Need any objdumps?
> 
> And this dump was produced by a XFree86-Sun24-3.3.3.1-52.sparc.rpm
> X server?  Just making sure...

Yep.  Grabbed the src.rpm off updates, removed the strip from the .spec
file, ran rpm -ba on it.

> 
> Later,
> David S. Miller
> davem@redhat.com
> 

 -- Peter

"I stick my neck out for nobody."
		-- Bogart
