From: Jakub Jelinek <jakub@redhat.com>
Date: Wed, 17 May 2000 11:46:12 +0000
Subject: Re: Solaris emulation
Message-Id: <marc-linux-ultrasparc-95856399101263@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, May 17, 2000 at 12:25:53PM +0200, Chris Osicki wrote:
> 
> Hi,
> 
> Please excuse my ignorance as I am new to Linux on Sparc.
> 
> I built a new kernel in order to be able to use Solaris emulation.
> insmod solaris results in a long list on unresolved symbols, ie:
> solaris_syscall
> I checked the source and found it ifdef-ed by
>  #ifdef CONFIG_SOLARIS_EMUL_MODULE
> but there is no such option in my .config file, only CONFIG_SOLARIS_EMUL
> 
> Am I missing something? The search engine on redhat.com where a I was 
> hoping to get some infos from couldn't find glimpse index.

If you say `m' to
Solaris binary emulation (EXPERIMENTAL)
in make config (or menuconfig), then CONFIG_SOLARIS_EMUL_MODULE is defined.
The above seems like you configured Solaris emul as compiled into the
kernel, but then I don't understand how you compiled solaris.o module.

	Jakub
