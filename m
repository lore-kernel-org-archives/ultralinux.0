From: charlie N <neuromancernt@yahoo.com>
Date: Wed, 09 Dec 1998 22:06:17 +0000
Subject: booting and installing using tfp and rarp
Message-Id: <marc-linux-ultrasparc-91333880005151@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I wrote a message to this mailing list a few weeks ago asking for more
clarity on installing ultralinux on a Sparc ultra 5, and today I
acutally had time to play with it. I got rarp working on my other
solaris based ultra 5 machine and did the hosts and ethers stuff to
assign the ip address, however, I do not have enough space to work
with on my solaris box to copy the whole ultralinux image, but I have
a tftp server running on the network, but it is Macintosh based. My
question is: Can I give the soon-to-be ultra linux box a boot command
to get a rarp/arp packet from the solaris machine, but look at the
Macintosh to get the tftpboot.img and the rest of the ultra linux files?
What would the syntax be in order for me to specify the macintosh tftp
server, but receive a rarp ip using the solaris machine?

Thx
Charlie Ombres



_________________________________________________________
DO YOU YAHOO!?
Get your free @yahoo.com address at http://mail.yahoo.com
