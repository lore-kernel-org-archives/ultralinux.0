From: Erik de Castro Lopo <erikd@mega-nerd.com>
Date: Mon, 25 Mar 2002 07:53:55 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-101704299721261@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 23 Mar 2002 13:15:45 +1100
Erik de Castro Lopo <nospam@mega-nerd.com> wrote:

> Hi all,
> 
> The clone system call on Sparc64 Linux seems to be producing drastically 
> different results to those obtain in x86 linux. On Sparc64 it seems as if
> the child process never runs (tried on uni-processor 2.4.18 and SMP
> 2.4.19-pre4 with the same results).

A collegue of mine suggested that it may be failing because the stack was 
not executable. I therefore wrote a new test where memory for the stack
was allocated using an anonymous mmap().

Like the others, this program runs on x86 but does not on Sparc64.

New test program here:

 	https://mega-nerd.net/clone_mmap_test.c

A similar program using fork() works as expected.

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
"The reasonable man adapts himself to the world; the unreasonable one 
persists to adapt the world to himself. Therefore all progress depends
on the unreasonable man." -- George Bernard Shaw (1856-1950)
