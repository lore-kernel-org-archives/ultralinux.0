From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Fri, 27 Nov 1998 23:30:17 +0000
Subject: Re: UltraPengiun 1.0.9 on Ultra 60
Message-Id: <marc-linux-ultrasparc-91221207018668@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91220254914659@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91220254914659@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On 27 Nov 1998, Juergen Kreileder wrote:

> 
> Hi,
> 
> I've installed 1.0.9  on an Ultra 60. After the installation
> the machine didn't boot because it didn't load the ncr53c8xx
> module. I built a new kernel (2.1.126-UP) with ncr53c8xx compiled
> in and the machine booted.

Incidentally, I had this problem with my Ultra 30, the ramdisk didn't work
for some reason...

> Now I still have two problems:
> * modules don't work, it seems that depmod -a can't resolve any
>   symbol.

get updated modutils (I think Jakub made a new RPM)

> * autofs doesn't work, first there was an syntax error in 
>   /etc/rc.d/init.d/autofs, and now automount hangs while trying
>   to mounting file systems

It's an easy fix, as I recall, either involves replacing {} with [] or a
semicolon, I don't recall which.
