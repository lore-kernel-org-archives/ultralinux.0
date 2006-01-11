From: "David S. Miller" <davem@davemloft.net>
Date: Wed, 11 Jan 2006 23:55:38 +0000
Subject: Re: [2.6 patch] arch/sparc64/Kconfig: fix HUGETLB_PAGE_SIZE_64K
Message-Id: <20060111.155538.28284376.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <20060111234640.GJ29663@stusta.de>
In-Reply-To: <20060111234640.GJ29663@stusta.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: bunk@stusta.de
Cc: ultralinux@vger.kernel.org, linux-kernel@vger.kernel.org, reiga@dspnet.fr.eu.org

From: Adrian Bunk <bunk@stusta.de>
Date: Thu, 12 Jan 2006 00:46:41 +0100

> This patch fixes a typo in the dependencies of HUGETLB_PAGE_SIZE_64K.
> 
> It might be more logical to rename the HUGETLB_PAGE_SIZE_*K dependencies 
> to HUGETLB_PAGE_SIZE_*KB, but let's fix this bug first.
> 
> This bug was reported by Jean-Luc Leger <reiga@dspnet.fr.eu.org>.
> 
> Signed-off-by: Adrian Bunk <bunk@stusta.de>

Applied, thanks Adrian.
