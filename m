From: Chris Osicki <osk@gd2.swissptt.ch>
Date: Wed, 17 May 2000 10:25:53 +0000
Subject: Solaris emulation
Message-Id: <marc-linux-ultrasparc-95855941130556@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

Please excuse my ignorance as I am new to Linux on Sparc.

I built a new kernel in order to be able to use Solaris emulation.
insmod solaris results in a long list on unresolved symbols, ie:
solaris_syscall
I checked the source and found it ifdef-ed by
 #ifdef CONFIG_SOLARIS_EMUL_MODULE
but there is no such option in my .config file, only CONFIG_SOLARIS_EMUL

Am I missing something? The search engine on redhat.com where a I was 
hoping to get some infos from couldn't find glimpse index.

It is kernel source 2.2.14, installed from kernel-source-2.2.14-5.0.rpm

Thanks for your help,
Chris

PS Please Cc: to me as I'm not yet subscribed to the list.
