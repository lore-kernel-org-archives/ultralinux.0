From: Grant Beattie <Grant.Beattie@fulcrum.com.au>
Date: Sun, 18 Oct 1998 05:17:37 +0000
Subject: Re: libstdc++.so.2.8
Message-Id: <marc-linux-ultrasparc-90870203622627@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90868562018612@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90868562018612@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, Oct 17, 1998 at 08:37:05PM +0200, Stephan van Hienen wrote:
> tried the libstdc++.so.2.9.0
> 
> still te error
> 
> so making a link  :
> 
> ln -s libstdc++.so.2.9.0 libstdc++.so.2.8
> 
> now :
> 
> netscape: error in loading shared libraries    
> : undefined symbol: __eh_pc
> 
> so i hope som1 has the libstdc++.so.2.8 rpm for me  

I would have thought they would have enough of a clue to statically
link it with libstdc++ since not all systems have it (it's new as of
gcc 2.8.x).

*sigh*

grant.
