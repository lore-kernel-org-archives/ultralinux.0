From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 15 Nov 1998 23:54:01 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91118678519518@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: "H. Peter Anvin" <hpa@transmeta.com>
   Date: Sun, 15 Nov 1998 15:49:21 -0800 (PST)

   Problem is that autofs passes an "unsigned long" in the ioctl()
   *argument*, not in a structure; also it passes data to the daemon via
   a packetized protocol on a pipe.

Ok, we have a similar issue for rtnetlink on sparc64 running 32-bit
binaries.  That piece is so complex that I've decided to tell people
for now to wait until we have a 64-bit userland if they want to run
programs like gated :-)

I looked at this patch, and it occurs to me, why to make it an
unsigned long ever?  For one thing this wait_queue_token seems to be
set by an int counter (autofs_next_wait_queue).

Secondly, to avoid all kinds of problems in this area, the best way to
define structures which are a "protocol" over some transport (even a
pipe) is to use the available fixed typing schemes (u32, u16 etc.) the
kernel provides.  This makes issues like this never a problem because
a u32 in the kernel is the same as a u32 in userspace no matter if we
have a 32-bit binary running under emulation on a 64-bit kernel.

Do you agree? :-)

Later,
David S. Miller
davem@dm.cobaltmicro.com
