From: Clint Adams <schizo@debian.org>
Date: Wed, 24 Dec 2003 03:29:44 +0000
Subject: Re: environmental monitoring
Message-Id: <marc-linux-ultrasparc-107223659330408@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107223135327134@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107223135327134@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> A driver needs to learn about the OBP format used on a particular 
> platform for environmental monitoring.  In the case of the T1/200 it may 
> be similar enough to the existing bbc_envctrl driver (written for an 
> SB1000) that you can adapt it for use on your system.  At the very 
> least, you'll have to remove the bbc_present() test.
> 
> If you want temperatures available to userspace, additional 
> modifications will be required as well.  I believe the current 
> bbc_envctrl driver monitors, but does not export, this information.
> 
> If you are interested in doing this work I suggest you post to the 
> development list (ultralinux@vger.kernel.org).

I'm interested in getting this working, but I have very little idea of
what I'm doing.
