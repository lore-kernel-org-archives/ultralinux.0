From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Mon, 29 Apr 2002 20:17:24 +0000
Subject: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-102011145323055@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

I now have a piece of code (at the end of this email) which uses clone()
and seems to work. However, the behaviour between Sparc64 and x86 Linux
is different.

On x86 both :

   pid = clone (child, stack, SIGCHLD, NULL);

and 

   pid = clone (child, stack, CLONE_VM | SIGCHLD, NULL);

work while on Sparc64, the former results in a stillborn child process.
Using strace I have found that the stillborn child received SIGSEGV as
soon as it was spawned. 

My suspicion is that in the case where CLONE_VM is not part of the flags,
the child process is not granted r/w access to the stack supplied to it
and hence segfaults as soon as it tries to access the stack.

I've had a look at the glibc sources (where clone is implemented in
sysdeps/unix/sysv/linux/sparc/sparc64/clone.S) but being somewhat unfamiliar
with Sparc assembler I can't really figure out if it is right or wrong.

Anybody have any insight?

Cheers,
Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
The word "Windows" is a word out of an old dialect of the 
Apaches. It means: "White man staring through glass-screen 
onto an hourglass..."


------------------------------------------------------------------------------
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sched.h>
#include <signal.h>
#include <sys/wait.h>

#define STACK_SIZE	(1<<10)

/* On sparc64, stack needs to be 8 byte aligned. */
static double stack_bytes [STACK_SIZE+1];

int
child(void *arg)
{	printf ("child running\n") ;
	sleep(2);
	printf ("child about to exit\n") ;
	exit (0);
} /* child */

int
main(int argc, char **argv)
{	int pid, status ;
	void *stack ;

	stack = &stack_bytes[STACK_SIZE];
	printf ("stack = %p\n", stack);

	printf("parent running\n");

	/* On x86, CLONE_VM flag is not required. Why?? */
	if((pid = clone (child, stack, CLONE_VM | SIGCHLD, NULL)) < 0)
	{	perror("clone");
		exit(1);
		}

	printf ("pid : %d\n", pid);

	if((pid = waitpid(pid, &status, WUNTRACED)) < 0)
	{	perror("Waiting for stop");
		exit(1);
		}

	printf ("parent about to exit\n") ;
	return 0 ;
} /* main */
------------------------------------------------------------------------------

