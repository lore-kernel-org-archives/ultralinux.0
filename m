From: "David S. Miller" <davem@redhat.com>
Date: Mon, 25 Mar 2002 08:36:20 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-101704568223436@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Erik de Castro Lopo <nospam@mega-nerd.com>
   Date: Mon, 25 Mar 2002 19:35:51 +1100

   On Mon, 25 Mar 2002 00:12:25 -0800 (PST)
   "David S. Miller" <davem@redhat.com> wrote:
   
   > sparc64-linux-gcc is only for kernel building, it is not
   > going to work for userland applications.
   
   I have actually tried both the standard gcc and sparc64-linux-gcc.
   The clone() system call does not work correctly in either case.

Perhaps you should look at how the glibc sources use and invoke
clone() in the linuxthreads sparc-specific code.  That does work.

I haven't looked at your sources because I cannot simply grab it
with wget (which doesn't understand https).  You're probably just
doing something silly.  There are all sorts of platform specific
nuances to do with the stack pointer you pass into clone(), on Sparc
for example the stack you pass in must be at least 8 byte aligned.
