From: Pete Zaitcev <zaitcev@metabyte.com>
Date: Fri, 12 Nov 1999 01:11:13 +0000
Subject: dhcpd on sparc64
Message-Id: <marc-linux-ultrasparc-94240279630121@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Greetings to 64 bit enabled brethen:

I was trying to boot a diskless SS-10 off an Ultra and ISC dhcpd
does not want to work. setsockopt(... SO_ATTACH_FILTER ...) returns
-EINVAL. I think it happens because of this:

include/linux/filter.h:

struct sock_filter      /* Filter block */
{
        __u16   code;   /* Actual filter code */
        __u8    jt;     /* Jump true */
        __u8    jf;     /* Jump false */
        __u32   k;      /* Generic multiuse field */
};

struct sock_fprog       /* Required for SO_ATTACH_FILTER. */
{
        unsigned short          len;    /* Number of filter blocks */
        struct sock_filter      *filter;
};

net/core/sock.c:

                case SO_ATTACH_FILTER:
                        ret = -EINVAL;
                        if (optlen = sizeof(struct sock_fprog)) {
                                struct sock_fprog fprog;

                                ret = -EFAULT;
                                if (copy_from_user(&fprog, optval, sizeof(fprog)))
                                        break;

                                ret = sk_attach_filter(&fprog, sk);
                        }
                        break;

How do you cope with a userland pointer being of different size?

--Pete
