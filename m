From: Chris Osicki <osk@gd2.swissptt.ch>
Date: Thu, 18 May 2000 09:28:15 +0000
Subject: Re: Solaris emulation
Message-Id: <marc-linux-ultrasparc-95864281407485@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95856399101263@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95856399101263@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Following up my own posting hoping that it could be useful for somebody.

Some time ago I wrote:

> I built a new kernel in order to be able to use Solaris emulation.
> insmod solaris results in a long list on unresolved symbols, ie:
> solaris_syscall
> I checked the source and found it ifdef-ed by
>  #ifdef CONFIG_SOLARIS_EMUL_MODULE
> but there is no such option in my .config file, only CONFIG_SOLARIS_EMUL
[...]
> It is kernel source 2.2.14, installed from kernel-source-2.2.14-5.0.rpm

Then I realized, I was not able to insert _any_ module.
The solution was simple, but it took me very long to find it:

    make distclean

before normal compilation.

Thanks to all who tried to help.

Regards,
Chris
