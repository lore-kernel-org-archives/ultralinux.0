From: Lars Kellogg-Stedman <lars@bu.edu>
Date: Fri, 12 Jun 1998 02:24:56 +0000
Subject: Re: Ultralinux tftp boot on an SS2?
Message-Id: <marc-linux-ultrasparc-90222357631007@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631003@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631003@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>I did it over a month ago without any real problems.  I used my pc
>(running linux of course) for the tftp server.  I will check if the
>image I used is still in my tftp directory when I get home.  If it is,
I will
>upload it where you can get it.

The problem looks like it's part of the tftpboot process...I'm booting
off a Mac running LinuxPPC (tried it with kernel 2.1.103 and 2.1.24);
according to a tcpdump of the install process the tftp fetch hanging
close to the end with the client (the machine I'm trying to install on)
repeatedly ACKing the server.

I *can* get the standard RH4.2/sparc install to boot.  Is there any
chance I can use the older installer with the Ultralinux distribution?

Thanks,

  -- Lars

--
Lars Kellogg-Stedman * lars@bu.edu * (617)353-8277
Office of Information Technology, Boston University
