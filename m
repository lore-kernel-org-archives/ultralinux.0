From: David Cooley <n5xmt@bellsouth.net>
Date: Fri, 05 Nov 1999 18:02:38 +0000
Subject: Re: Help with new kernel install with atm
Message-Id: <marc-linux-ultrasparc-94182664908370@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94182426304407@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94182426304407@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 12:19 PM 11/5/1999 -0500, amarin@udea.edu.co wrote:
>Hi,
>
>I have a UltraSparc 10 with Redhat linux 6.0, I was compiled the 2.2.10
>kernel with Atm and the new driver Pca200e support succesfull (make
>vmlinux).
>
>I put the new kernel and System.map in the /boot directory and I updated
>the silo.conf file
>
>when I reboot and select my new kernel the systen show this error :
>
>boot: linux-2.2.10
>
>Fatal error: Image too large to fit in destination
>
>
>Any ideas?

gzip it and point silo.conf at the gzipped file.
=============================David Cooley N5XMT Internet: N5XMT@bellsouth.net
Packet: N5XMT@KQ4LO.#INT.NC.USA.NA T.A.P.R. Member #7068
We are Borg... Prepare to be assimilated!
=============================
