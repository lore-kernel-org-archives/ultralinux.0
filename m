From: Michiel Boland <boland@diva.nl>
Date: Wed, 14 Apr 1999 10:13:53 +0000
Subject: Re: Address that caused sigsegv
Message-Id: <marc-linux-ultrasparc-92408589426900@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92408170123936@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92408170123936@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> * Is it impossible to get the address that caused the SIGSEGV or does
>   new_setup_frame32() write this information to the stack frame?

Judging by the source, it doesn't.

> * Why does tss.new_signal exist, is setup_frame32() obsolete?

No idea why it exists. This is from sys32_sigaction():

	if(sig < 0) {
		current->tss.new_signal = 1;         
		sig = -sig;
	}

Since you say that new_signal is always nonzero (how do you check that?),
my guess is that there is some hacking going on in libc.

The setup_frame32 function *does* put the faulting address on the stack,
but I guess you will have to hack around libc in order to get it to
work.

This is of course going to be extreeeeeeeemely unportable so I would
advise to just let your app dump core and not install a handler for 
SIGSEGV.

Cheers
Michiel
