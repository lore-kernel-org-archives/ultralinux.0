From: Lennert Buytenhek <buytenh@gnu.org>
Date: Thu, 10 Jan 2002 18:49:20 +0000
Subject: [buytenh@gnu.org: [cry for advice] sparc64 bridging troubles]
Message-Id: <marc-linux-ultrasparc-101068859405697@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

In the hope that people on this list will at least read this email until
the end before hitting reply and starting to rant..

Please CC on replies.  Thanks.


----- Forwarded message from Lennert Buytenhek <buytenh@gnu.org> -----

Date: Thu, 10 Jan 2002 11:59:25 -0500
From: Lennert Buytenhek <buytenh@gnu.org>
To: [unnamed sparc64 person]
Cc: narancs@narancs.tii.matav.hu
Subject: [cry for advice] sparc64 bridging troubles
User-Agent: Mutt/1.3.25i

Hi,

After hacking around the fact that the sparc64 PPP ioctl32 conversion
functions mess up the ifreq struct passed to _every_ SIOCDEVPRIVATE device
ioctl ever issued (since the numbers alias, yuck yuck fuck argh yuck), I'm
seeing a truly weird problem.

From net/bridge/br_device.c::br_dev_do_ioctl:

        data = (unsigned long *)rq->ifr_data;
==>    if (copy_from_user(args, data, 4*sizeof(unsigned long)))
                return -EFAULT;

This copy_from_user invocation hangs the box solid, every single time.  The
arguments it's called with are fffff8001395f910, 00000000effff9f8, 32.  I
would think these look OK (and even if they wouldn't I guess they shouldn't
hang the box).

Any good ideas?  The machine in question is (I think) a netra t1 200.  The
box itself is in Hungary, and I can't reboot it by myself, which makes it
inconvenient both for me and the CC'ed person to test things.


thanks,
Lennert

----- End forwarded message -----
