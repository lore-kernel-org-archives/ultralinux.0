From: Thunder from the hill <thunder@ngforever.de>
Date: Fri, 12 Jul 2002 22:14:23 +0000
Subject: Re: L1_CACHE_SHIFT on sparc64
Message-Id: <marc-linux-ultrasparc-102651216908201@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-102651148307513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-102651148307513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

On Fri, 12 Jul 2002, David S. Miller wrote:
> Right.  But who needs L1_CACHE_SHIFT?

fs/dquot.c uses it.

> Nothing generic should reference it.  Did something get added to 2.5.x
> that needs it now?

Must have been 2.5, but not since 2.5.24.

> I wouldn't have noticed yet as I've been away for nearly half a month
> on vaction until a day or two ago.

Welcome back!

							Regards,
							Thunder
-- 
(Use http://www.ebb.org/ungeek if you can't decode)
------BEGIN GEEK CODE BLOCK------
Version: 3.12
GCS/E/G/S/AT d- s++:-- a? C++$ ULAVHI++++$ P++$ L++++(+++++)$ E W-$
N--- o?  K? w-- O- M V$ PS+ PE- Y- PGP+ t+ 5+ X+ R- !tv b++ DI? !D G
e++++ h* r--- y- 
------END GEEK CODE BLOCK------

