From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sat, 28 Nov 1998 16:47:10 +0000
Subject: Re: UltraPengiun 1.0.9 on Ultra 60
Message-Id: <marc-linux-ultrasparc-91227164301882@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91220254914659@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91220254914659@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 28 Nov 1998, David S. Miller wrote:

>    Date: 	Fri, 27 Nov 1998 18:30:17 -0500 (EST)
>    From: Derrick J Brashear <shadow@DEMENTIA.ORG>
> 
>    > * autofs doesn't work, first there was an syntax error in
>    >   /etc/rc.d/init.d/autofs, and now automount hangs while trying
>    >   to mounting file systems
> 
>    It's an easy fix, as I recall, either involves replacing {} with []
>    or a semicolon, I don't recall which.
> 
> There is more involved, only recent Linux kernels have the fixed
> autofs types for sparc, if you recall there was a problem in that
> autofs talks over a pipe using a specific protocol with the userspace
> program.  The 32-bit types in sparc32 userspace were not translated
> properly in this case on sparc64, poof.

The rc file, not the actual problem.
