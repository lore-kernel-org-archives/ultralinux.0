From: Walter Keeler <wkeeler@acm.org>
Date: Wed, 05 Jan 2000 18:19:44 +0000
Subject: Re: problem with ipfwadm
Message-Id: <marc-linux-ultrasparc-94709628528459@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94572126505530@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94572126505530@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Have you compiled your kernel with firewalling support?

Also, if you're using 2.2.x kernels, you don't want ipfwadm, rather use
ipchains.

--Walter Keeler


wkeeler@acm.org                        *******************************
Walter Keeler                          *  If my words did glow...    *
San Francisco, CA                      *******************************

On Wed, 5 Jan 2000, yann wrote:

> hello,
> i'm trying to configure a sun netra using ultrapenguin 1.1.9, and i have
> a problem with ipfwadm. I've compile a new kernel so it can use the
> masquerading option. but when i try to run ipfwadm, it returns ipfwadm
> setsockopt invalid argument.
> Please help me..
> sorry for my english that is really bad
> 
> 
