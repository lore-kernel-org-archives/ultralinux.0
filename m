From: Peter Jones <pjones@redhat.com>
Date: Tue, 10 Aug 1999 18:01:53 +0000
Subject: Re: PC cards in an Ultra 5?
Message-Id: <marc-linux-ultrasparc-93436642228073@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93390361310323@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93390361310323@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 8 Aug 1999, David Van Beveren wrote:

> Neal,
> 
> Video cards will be difficult to get working, since most are incompatible
> with the Sun OBP initialization, defaulting instead to the ubiquitous FCODE
> initialization. If Sun or someone implemented an extension or rewrite of the
> OBP to understand ind interact with FCODE, it would be heaven sent, IMHO,
> since xfree86 drivers for LOTS of video cards would be a recompile away from
> being debuggable. :)

This is to say they wouldn't work as console;  OBP is only needed at that
stage, really... Unless I'm really missing something about this ;) 

 -- Peter

If a subordinate asks you a pertinent question, look at him as if he had
lost his senses.  When he looks down, paraphrase the question back at him.
