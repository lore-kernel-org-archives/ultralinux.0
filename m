From: "David S. Miller" <davem@davemloft.net>
Date: Mon, 04 Apr 2005 21:25:23 +0000
Subject: Re: Weird Mouse Behaviour with 2.6
Message-Id: <20050404142523.5da9d087.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb050404111120b5c75@mail.gmail.com>
In-Reply-To: <ec7cefb050404111120b5c75@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 4 Apr 2005 13:22:37 -0700
Eric Brower <ebrower@gmail.com> wrote:

> It seems to me that serial_core.c::uart_wait_until_sent() should
> assert if port->timeout is 0

I definitely agree it should BUG() on this.  We would have
caught this problem a long time ago if it did.
