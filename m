From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Sun, 02 Aug 1998 18:01:27 +0000
Subject: Re: 2 thing hanging the whole kernel
Message-Id: <marc-linux-ultrasparc-90223508402786@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90223508402784@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90223508402784@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 2 Aug 1998, Marc Duponcheel wrote:

> 
> > mailing this again (no response about this the othere times)
> > 2 thing that are hanging the whole kernel:
> > (tried from 2.1.99 to 2.1.112)
> > quota and ipfwadm-wrapper
> 
> Funny to read this since I use both of them 
hmms when i do :
touch /quota.users
quotacheck (or reboot)
and edit the quota of  a user it hangs


> (well I use ipchains of course
> om 2.1.10x+) without a problem ...
ok :)

> 
> I use a almost stock UltraPenguin.
i run ultrapenguin 1.0.9 
on ultra sparc 10

> 
> Note that I had some problems with disk syncing in the beginning but after
> rebuilding the bdflush those went away. I am not sure if the bdflush was
> the problem (since I did rebuild a few other main programs as well).
don't think that is the problem
just all hangs
my telnet to the machine stops (no key response etc.)
