From: Erik de Castro Lopo <erikd@mega-nerd.com>
Date: Sat, 23 Mar 2002 03:33:59 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-101685447618718@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 23 Mar 2002 13:15:45 +1100
Erik de Castro Lopo <nospam@mega-nerd.com> wrote:

> and then strace hangs. I think this is actually a problem with strace rather than 
> a result of what my program is trying to do.

I have compiled a new sparc64 version of strace (with the right kernel headers) and
and strace no longer bombs. New output from "strace -f ./clone_test" :

    mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7001a000
    write(1, "parent running\n", 15parent running
    )        = 15
    clone(PTRACE_ATTACH: Operation not permitted
    Too late?
    child_stack=0x61cc8, flags=0x14)  = 5659
    --- SIGCHLD (Child exited) ---
    wait4(5659, [WIFSIGNALED(s) && WTERMSIG(s) = SIGSEGV], WUNTRACED, NULL) = 5659
    write(1, "parent about to exit\n", 21parent about to exit
    )  = 21
    munmap(0x7001a000, 8192)                = 0
    exit(0)                                 = ?

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
"One of the great things about books is sometimes there are 
some fantastic pictures" - George W. Bush
