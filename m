From: "H. Peter Anvin" <hpa@transmeta.com>
Date: Sat, 14 Nov 1998 08:17:49 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91107863319189@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Okay, I finally had time to take a closer look at this. I've
> found the problem but am not sure what's the best fix.
> 
> The linux/include/linux/auto_fs.h file is shared between the
> autofs.o kernel module and the automount user space daemon
> and contains the following struct:
> 
> struct autofs_packet_missing {
>        struct autofs_packet_hdr hdr;
>        unsigned long wait_queue_token;
>        int len;
>        char name[NAME_MAX+1];
> };
> 
> The problem is that on sparc64 systems the unsigned long
> generates a 64 bit long for the kernel to use, but the
> user space automount expects a 32 bit long and is therefore
> not able to reference the len and name fields properly. I've
> worked around the problem for now by inserting an unused
> long before wait_queue_token in the automount build.
> 
> I thought about providing a patch for the struct since it
> looks like 32 bits should be large enough for the token but
> was then told there are ioctl's which should handle passing
> data between 32 bit user <-> 64 bit kernel space automatically.
> I'm getting lost in the code trying to find them but if they
> exist I guess that's the best place for a fix.
> 
> Perhaps Dave M. or Jakub J. will have a look?
> 
> Thanks for the great work on the ultrapenguin guys. I'm
> really loving these ultra's with hme's at 100mb...
> 

Why is the "long" a different size in kernel and user space?  That
seems buggy.  It's an easy thing to fix, but it seems like the Wrong
Thing[TM].

Changing that to "int" would be just fine, *except* it would break the
protocol for all other platforms.

	-hpa
