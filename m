From: Jakub Jelinek <jakub@redhat.com>
Date: Sat, 27 Nov 1999 07:40:27 +0000
Subject: Re: Problem with UltraPenguin 1.2 ?
Message-Id: <marc-linux-ultrasparc-94368833429381@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94367026724482@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94367026724482@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, Nov 27, 1999 at 03:39:48AM +0100, Bosko Radivojevic wrote:
> Hello
> 
> I've found UltraPenguin and I was very happy because of that :)
> 
> I have Ultra Enterprise 450, with one SCSI 4.5GB hdd. Root partition is in
> /dev/sda1, and starts with cylinder 1.
> 
> When installation script want to install SILO I get error message:
> 
> Mount: Device or resource busy
> 
> What I have to do!? Please help me :)

Don't use UltraPenguin, it has been superceeded by Red Hat 6.0 /SPARC and
Red Hat 6.1 /SPARC which has been released lately.
Most of the features (with the exception of tape install I guess noone
besides myself used) were rolled into RH6.0/RH6.1, plus there are numerous
newer bugfixes and new features.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jakub@redhat.com | http://sunsite.mff.cuni.cz/~jj
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
