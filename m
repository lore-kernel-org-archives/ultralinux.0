From: "David S. Miller" <davem@redhat.com>
Date: Fri, 12 Jul 2002 21:55:24 +0000
Subject: Re: L1_CACHE_SHIFT on sparc64
Message-Id: <marc-linux-ultrasparc-102651148307513@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Thunder from the hill <thunder@ngforever.de>
   Date: Fri, 12 Jul 2002 15:58:28 -0600 (MDT)

   What is the proper value for L1_CACHE_SHIFT on sparc64?
   The cache itself is two chunks of 16 bytes each, makes up 32 bytes. On 
   i386, L1_CACHE_BYTES = (1 << L1_CACHE_SHIFT), so if this applies here, 
   too, we have a L1_CACHE_SHIFT of... 5?

Right.  But who needs L1_CACHE_SHIFT?  Nothing generic should
reference it.  Did something get added to 2.5.x that needs it now?

I wouldn't have noticed yet as I've been away for nearly half a month
on vaction until a day or two ago.
