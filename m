From: Ingo Molnar <mingo@chiara.csoma.elte.hu>
Date: Sat, 18 Sep 1999 16:17:14 +0000
Subject: Re: Kernel probs...
Message-Id: <marc-linux-ultrasparc-93767262609592@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93761559912745@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93761559912745@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Fri, 17 Sep 1999, David A. Cooley wrote:

> Running Kernel 2.2.11 with the raid patch and all is well...
> I'm wanting to upgrade to the 2.2.12 kernel just because it's newer...
> The 2.2.11 raid patch had some problems on the 2.2.12 source.  Is there any 
> benefit of the 2.2.12 kernel over the 2.2.11 (for sparc) or should I just 
> stay with the 2.2.11 for now?

2.2.12 (and the pre-2.2.13 patches) are better than the 2.2.11 kernel. If
you apply the 2.2.11 patch to 2.2.12 then you'll get a single reject,
which you can safely ignore. (it tries to add something that has already
been merged into the main tree)

-- mingo
