From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 09 Dec 1998 07:25:08 +0000
Subject: Re: Linux on UltraSPARC 10+
Message-Id: <marc-linux-ultrasparc-91324900127886@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I read some docs, eventually found solemul, copied the libraries the docs said
> to (and a few others) across, and some stuff works.  Wonderful.  Unfortunately 
> I have finally run into a brick wall.  The application's server manager and 
> the CGI gateway both fail with:
> 
> Unimplemented Solaris syscall 164 70308c00 00002000 70412e8c 00000000
> Unimplemented Solaris syscall 164 000ad230 00000001 00000000 00000000
> Unimplemented Solaris MAP_NORESERVE mmap() flag
> Unimplemented Solaris syscall 159 effff650 00000100 70c57e14 00000000
> 
> (obviously the hex numbers differ, not by much though, at a guess I'd say
> they're either memory addresses or some library offset)
> 
> How do I go about implementing these unimplemented syscalls? :-)
> 
> I've considered stracing them under solaris, working out which functions the

You can strace under Linux, UP strace knows Linux and Solaris and how to
trace them.

> numbers are (or is there a header file listing them?  It's the desktop 2.6
> so there's no devel tools :( , hacking together the necessary functions and 
> then shipping them off to vger or wherever to be ridiculed by others ;)  Is
> that the right thing to do?

The above syscalls (164, 159) are lwp syscalls, which probably won't ever be
supported, as Solaris kernel thread model is vastly different to the Linux
one and it would just mean implementing real kernel threads in Linux, which
would mean touching nearly everything.
The other solution would be to reimplement -l*thread* from Solaris using
Linux means of doing things.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
