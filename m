From: Thunder from the hill <thunder@ngforever.de>
Date: Fri, 12 Jul 2002 21:58:28 +0000
Subject: L1_CACHE_SHIFT on sparc64
Message-Id: <marc-linux-ultrasparc-102651120507229@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-102651148307513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-102651148307513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

What is the proper value for L1_CACHE_SHIFT on sparc64?
The cache itself is two chunks of 16 bytes each, makes up 32 bytes. On 
i386, L1_CACHE_BYTES = (1 << L1_CACHE_SHIFT), so if this applies here, 
too, we have a L1_CACHE_SHIFT of... 5?

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

