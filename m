From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Wed, 20 Mar 2002 20:05:36 +0000
Subject: Re: sys_call clone in Sparc64?
Message-Id: <marc-linux-ultrasparc-101665483014136@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101663078500638@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101663078500638@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 20 Mar 2002 21:53:49 +1100
Erik de Castro Lopo <nospam@mega-nerd.com> wrote:

> Hi all,
> 
> I trying to work on some code which uses the sys_clone system call.
> It wasn't working (wasn't reporting an error either) so I wanted to
> know why. 
> 
> I grepped throught the kernel source (2.4.19-pre3) and found that 
> sys_clone doesn't seem to have been implemented on Sparc or Sparc64. 

Doh! I found it:

	arch/sparc64/kernel/entry.S

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
"The earth is degenerating these days. Bribery and corruption abound.
Children no longer mind parents ...and it is evident that the end of
the world is approaching fast." -- Assyrian Tablet Engraved in 2800 B.C.
