From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Sat, 23 Mar 2002 02:15:45 +0000
Subject: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-101684978515837@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

The clone system call on Sparc64 Linux seems to be producing drastically 
different results to those obtain in x86 linux. On Sparc64 it seems as if
the child process never runs (tried on uni-processor 2.4.18 and SMP
2.4.19-pre4 with the same results).

My test program can be found here:

	https://mega-nerd.net/clone_test.c

On Sparc64 I get:

    root@razor > gcc -Wall clone_test.c -o clone_test
    root@razor > ./clone_test 
    parent running
    parent about to exit
    root@razor > sparc64-linux-gcc -Wall clone_test.c -o clone_test
    root@razor > ./clone_test 
    parent running
    parent about to exit
    root@razor >

On x86 linux I get this:

    erikd@coltrane > ./clone_test 
    parent running
    child running
    child about to exit
    parent about to exit
    erikd@coltrane > 

The assember output of sparc64-linux-gcc seems to be OK:

    main:
            !#PROLOGUE# 0
            save    %sp, -112, %sp
            !#PROLOGUE# 1
            st      %i0, [%fp+68]
            st      %i1, [%fp+72]
            sethi   %hi(.LLC2), %o0
            or      %o0, %lo(.LLC2), %o0
            call    printf, 0
             nop
            sethi   %hi(child), %o0
            or      %o0, %lo(child), %o0
            sethi   %hi(stack+32768), %o1
            or      %o1, %lo(stack+32768), %o1
            mov     20, %o2
            mov     0, %o3
            call    clone, 0
             nop

Strace output looks like this:

    munmap(0x7001c000, 9341)                = 0
    fstat64(1, {st_mode=S_IFCHR|0600, st_rdev=makedev(4, 64), ...}) = 0
    ioctl(1, 0x40245408, {B9600 opost isig icanon echo ...}) = 0
    mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7001a000
    write(1, "parent running\n", 15parent running
    )        = 15
    clone(child_stack=0x29cc8, flags=0x14)  = 166
    --- SIGCHLD (Child exited) ---
    wait4(166, [WIFSIGNALED(s) && WTERMSIG(s) = SIGSEGV], WUNTRACED, NULL) = 166
    write(1, "parent about to exit\n", 21parent about to exit
    )  = 21
    munmap(0x7001a000, 8192)                = 0
    exit(0)                                 = ?

which seems to imply that the child exits immediately. If I do strace -f I get
this:

    mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7001a000
    write(1, "parent running\n", 15parent running
    )        = 15
    clone(child_stack=0x61cc8, flags=0x14)  = 179
    [pid   179] --- SIGSEGV (Segmentation fault) ---
    --- SIGCHLD (Child exited) ---
    wait4(179,  <unfinished ...>

and then strace hangs. I think this is actually a problem with strace rather than 
a result of what my program is trying to do.

For the moment I will believe that first strace output which states that the child
process segfaults immediately after clone. Now I gotta figure out why.

Anybody got any clues on how to progress this?

Cheers,
Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
When aiming for the common denominator, be prepared for the 
occasional division by zero.
