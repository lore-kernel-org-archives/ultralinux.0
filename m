From: Eric Brower <ebrower@usa.net>
Date: Fri, 30 Jan 2004 19:21:46 +0000
Subject: Re: Problem with ioctl(fd, TUNSETIFF, ...)
Message-Id: <401AAECA.70609@usa.net>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

The definition of TUNSETIF is:

   #define TUNSETIFF     _IOW('T', 202, int)

indicating the argument is an "int" rather than a "struct ifreq*".  This 
  trickery (as I understand it) would work on 32-bit systems, but not 
64-bit.

The .../arch/sparc64/kernel/ioctl32.c translation for this ioctl is 
"COMPATIBLE_IOCTL" which would be correct if an int was really expected, 
but is not correct when a struct ifreq* is passed.  There are already 
translations in ioctl32.c to deal with an argument of type struct 
ifreq*, so you might wish to take a look at them and change the 
COMPATIBLE_IOCTL entry to an appropriate HANDLE_IOCTL entry.  Take a 
look at dev_ifsioc() for starters.

I've cc'd the ultralinux list, which is more appropriate for this matter.

E

Erwann Abalea wrote:
> Hello,
> 
> I wanted to install OpenVPN on my firewall machine (an Ultra1 running
> 2.4.18), but unfortunately, I failed.
> 
> I managed to track the failing code, and tried to find equivalent
> known-to-be-good code (found in the Linux Kernel documentation, in
> networking/tuntap.txt).
> 
> The following code fails:
> -----
> int tun_alloc(char *dev)
> {
>   struct ifreq ifr;
>   int fd, err;
> 
>   if ((fd = open("/dev/net/tun", O_RDWR)) < 0)
>   {
>     perror("Unable to open /dev/net/tun");
>     return -1;
>   }
> 
>   memset(&ifr, 0, sizeof(ifr));
> 
>   /* Flags: IFF_TUN   - TUN device (no Ethernet headers)
>    *        IFF_TAP   - TAP device
>    *        IFF_NO_PI - Do not provide packet information
>    */
>   ifr.ifr_flags = IFF_TUN;
> 
>   if (*dev)
>     strncpy(ifr.ifr_name, dev, IFNAMSIZ);
> 
>   if ((err = ioctl(fd, TUNSETIFF, (void *) &ifr)) < 0)
>   {
>     close(fd);
>     perror("ioctl(fd, TUNSETIFF, ...) error");
>     return err;
>   }
>   strcpy(dev, ifr.ifr_name);
>   return fd;
> }
> -----
> 
> I tested this in a small program (just add a main() asking for an
> argument, and call the tun_alloc() with the given argument). It fails on 2
> ultrasparc machines (an U1 and an U2 running the same kernel version, the
> U1 also has the IPVS patch applied), and works on a standard PC also
> running the 2.4.18 kernel. Tun/Tap support is compiled in (if it wasn't,
> the failure would have been at the open() call).
> 
> What I get is:
> -----
> Opening tun0
> ioctl(fd, TUNSETIFF, ...) error: : Invalid argument
> -----
> 
> I also get something in my syslog.log file:
> Jan 30 15:15:39 herisson kernel: sys32_ioctl(tun:4329): Unknown cmd fd(3) cmd(800454ca) arg(effffc70)
> 
> What am I doing wrong?
> 

