From: "David S. Miller" <davem@redhat.com>
Date: Wed, 14 Jan 2004 19:39:58 +0000
Subject: Re: wireless ioctl compat
Message-Id: <20040114113958.560b6e9e.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
References: <20040108052542.GA2049@scowler.net>
In-Reply-To: <20040108052542.GA2049@scowler.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 14 Jan 2004 11:14:19 -0500
Clint Adams <schizo@debian.org> wrote:

> > Give this a try.
> 
> Thanks.  What I have observed thus far is that
> a) 32-bit iwconfig segfaults (in memcpy) unless run under strace,
>    in which case it seems to function normally.
> b) 32-bit SIOCSIWESSID works, but 32-bit SIOCGIWESSID does not.
> 
> Any ideas?

I'll look into it later today, thanks for the report.
