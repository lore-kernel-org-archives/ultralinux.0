From: rehn@informatik.tu-muenchen.de
Date: Wed, 14 Apr 1999 09:14:09 +0000
Subject: Address that caused sigsegv
Message-Id: <marc-linux-ultrasparc-92408170123936@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am wrtiting a signal handler to catch SIGSEGVs.
In the handler I want to know which address caused the segmentation fault.
Could anyone tell me, where this information is on the stack frame?

In arch/sparc64/kernel/signal32.c I found the functions new_setup_frame32(),
setup_frame32() and setup_rt_frame32().
When I cause a SIGSEGV, handle_signal32() is called:

static inline void handle_signal32(...)
{
...
		if (ka->sa.sa_flags & SA_SIGINFO)
			setup_rt_frame32(ka, regs, signr, oldset, info);
		else if (current->tss.new_signal)
			new_setup_frame32(ka, regs, signr, oldset);
		else
			setup_frame32(&ka->sa, regs->tpc, regs->tnpc, regs, signr, oldset);
...
}

setup_rt_frame32() is called if SA_SIGINFO is set in sa_flags but the manpage 
for sigaction says nothing about SA_SIGINFO under Linux (but under Solaris).
current->tss.new_signal is always not equal to zero so I think
new_setup_frame32() is always called.


* Is it impossible to get the address that caused the SIGSEGV or does
  new_setup_frame32() write this information to the stack frame?
* What about SA_SIGINFO, is it obsolete or not implemented yet?
* Why does tss.new_signal exist, is setup_frame32() obsolete?


Christian

-- 
*******************************************************************************
Dipl. Inform. Christian Rehn                                                  
phone/fax: +49 +89 - 289 - {25408 / 22037}                                    
email:     rehn@in.tum.de                                                     
www:       http://wwwspies.informatik.tu-muenchen.de/personen/rehn            
smail:     Technische Universitaet Muenchen, Informatik - H7, D-80290 Muenchen
visit:     Luisenstrasse, Eingang XI, Zimmer 3558, D-80333 Muenchen           
*******************************************************************************
