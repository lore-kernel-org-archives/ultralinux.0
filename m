From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Mon, 25 Mar 2002 08:35:51 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-101704539423230@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 25 Mar 2002 00:12:25 -0800 (PST)
"David S. Miller" <davem@redhat.com> wrote:

> 
> sparc64-linux-gcc is only for kernel building, it is not
> going to work for userland applications.

I have actually tried both the standard gcc and sparc64-linux-gcc.
The clone() system call does not work correctly in either case.

I have however compiled other small test applications with 
sparc64-linux-gcc and they seem to work (sizeof (void*) = 8,
behave perfectly).

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
Failure is not an option. It comes bundled with your Microsoft product.

