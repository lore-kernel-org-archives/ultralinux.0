From: Matthew Hawkins <matt@mail.goldweb.com.au>
Date: Tue, 23 Mar 1999 21:34:12 +0000
Subject: Re: Solaris emulation !?!
Message-Id: <marc-linux-ultrasparc-92222515102068@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92220050913641@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92220050913641@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 23 Mar 1999, Olivier A. D. Lebaillif wrote:
> Is there anybody out there who was able to use the Solaris emulation in
> order to run something more involving than ls ??????

I managed to get a couple of components of Verity's Search97 package to run,
however the main server required lwp support which solemu doesn't do just
yet.  A coworker and I intend to fix that small deficiency, however don't
hold your breath as (and I hate to say it) it's the lowest priority we have
- closely beaten by sleep ;)

I found the documentation for the package quite concise and complete - get
your sloaris libraries, whack them in this directory, cross your fingers and
pray to your favourite deity, try to run something.  I can't remember
anything special I had to do that wasn't written in the docs.  I think the
worst that can happen is the program whinges about unimplemented system
calls, and you'll have to run the thing under the real solaris.  That's your
cue to implement them! :)

-- 
Matt
