From: "David S. Miller" <davem@redhat.com>
Date: Fri, 11 Jan 2002 08:15:54 +0000
Subject: Re: [buytenh@gnu.org: [cry for advice] sparc64 bridging troubles]
Message-Id: <marc-linux-ultrasparc-101073703105074@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101068859405697@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101068859405697@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Lennert Buytenhek <buytenh@gnu.org>
   Date: Thu, 10 Jan 2002 13:49:20 -0500
   
   This copy_from_user invocation hangs the box solid, every single time.  The
   arguments it's called with are fffff8001395f910, 00000000effff9f8, 32.  I
   would think these look OK (and even if they wouldn't I guess they shouldn't
   hang the box).

If set_fs(KERNEL_DS) this will hang the box because that means that
both pointers need to be kernel points.  I bet that is the state
you've left it in when sys_ioctl() is invoked.

The whole gist of ioctl32.c's workings is:

1) copy user struct into kernel copy
2) translate into 64-bit kernel copy
3) orig_fs = get_fs(); set_fs(KERNEL_DS);
4) pass kernel copy to sys_ioctl()
5) set_fs(orig_fs);

The real solution is to move away from SIOCDEVPRIVATE since those
are deprecated anyways, but you appear to understand this already.
:-)

Franks a lot,
David S. Miller
davem@redhat.com
