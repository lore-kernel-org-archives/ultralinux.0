From: pau@readysoft.es
Date: Wed, 04 Aug 1999 14:47:27 +0000
Subject: Re: Problems with NEW PATCH: ncr/sym drivers and bridges
Message-Id: <marc-linux-ultrasparc-93377849719111@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93375956828870@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93375956828870@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 4 Aug 1999, Peter Jones wrote:

> On Wed, 4 Aug 1999 pau@readysoft.es wrote:
> 
> > I've been runnig 2.2.10 on Ultra PCI successfully for 3 days but....
> > Today it has stopped working. instead of SIR Resets I've got:
> ...
> > I got the dump through the serial console so the machine was still running 
> > :/ Does it help to trace the problem?
> 
> You need to read /usr/src/linux/Documentation/oops-tracing.txt .  The dump
> you provided is useless its been attacked with ksymoops.  oops-tracing
> explains how to do this ;)

Sorry, forgot it :)
Here it goes!

Trace: 00415f40 <data_access_exception+60/80>
Trace: 0040fa64 <__do_data_access_exception+34/44>
Trace: 0043b2fc <printk+1fc/220>
Trace: 0043f718 <do_exit+78/3a0>
Trace: 00416314 <die_if_kernel+b4/e0>
Trace: 00415f40 <data_access_exception+60/80>
Trace: 0040fa64 <__do_data_access_exception+34/44>
Trace: 0043b2fc <printk+1fc/220>
Trace: 0043f718 <do_exit+78/3a0>
Trace: 00416314 <die_if_kernel+b4/e0>
Trace: 00415f40 <data_access_exception+60/80>
Trace: 0040fa64 <__do_data_access_exception+34/44>
Trace: 0043b2fc <printk+1fc/220>
Trace: 0043f718 <do_exit+78/3a0>
Trace: 00416314 <die_if_kernel+b4/e0>
Trace: 00415f40 <data_access_exception+60/80>
Trace: 0040fa64 <__do_data_access_exception+34/44>
Trace: 0043b2fc <printk+1fc/220>


Pau
