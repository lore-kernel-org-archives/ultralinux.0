From: <pau@readysoft.es>
Date: Mon, 29 Mar 1999 09:17:31 +0000
Subject: Re: Post 1.2 development
Message-Id: <marc-linux-ultrasparc-92270303505528@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92258097010860@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92258097010860@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 27 Mar 1999, David Miller wrote:

>    1. What can we expect in the way of a time frame for a peek at
>    64-bit userland? Are we talking about 1-2 months, 6 months or a
>    year? This is a really critical piece of information for ISVs
>    contemplating porting to UltraPenguin.
> 
> I believe I told you in private email a few weeks ago that we are
> currently shooting for some time near mid-summer.  But as usual, no
> promises.
> 
> That being said, I believe people who are porting applications which
> have no real need for 64-bits are making a mistake by making a 64-bit
> sparc version of their application.  This is simply because if they
> make a 32-bit version then the whole sparc line of systems can run
> that application.
> 
> The 64-bit userland will be slightly slower for most applications, and
> this is just a fact of life not anything to do with how our
> implementation will work (pointers and types are bigger, thus the
> memory references of the application, even for common tasks, will be
> larger).

Then, will we be able to support more than 2^16 users per machine,
i.e. 2^32?

Pau
