From: Peter Jones <pjones@redhat.com>
Date: Tue, 10 Aug 1999 18:00:45 +0000
Subject: Re: PC cards in an Ultra 5?
Message-Id: <marc-linux-ultrasparc-93436642128066@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93390361310323@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93390361310323@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 5 Aug 1999, Neal Pitts wrote:

> Has anyone had any success hooking up PCI PC cards to an Ultra 5?  I'd
> love to be able to use a PC video card or sound card or whatever else in
> my Sun under Linux.  Anyone know the chances for success for something
> like this?  Thanks!

Some sound cards probably work with little or no fixing except in the
actual Config.in's of the kernel.  Some don't.  es1371's still need some
work, and they're what I've actually got that I've tried it with.  Unless
I miss my guess there are a good number of 32/64-bit (int as a memory
address, etc) problems in this area, because nobody has tried terribly
hard to make sound drivers portable (or sane, for that matter).

 -- Peter

If it wasn't bleeding, and I was blindfolded, I might put that in my mouth...
                -- Mairi
