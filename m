From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Thu, 14 May 1998 22:44:23 +0000
Subject: Re: 2 weird problems (second ide)
Message-Id: <marc-linux-ultrasparc-90222356531038@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531026@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531026@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 14 May 1998, Stephan van Hienen wrote:

> also maybe have to do something with it :
> 
> 
> [root@sun /root]# dmesg -c
> [root@sun /root]# mkswap /dev/hda2     
> Setting up swapspace, size = 52248576 bytes
> [root@sun /root]# dmesg
> sys32_ioctl: Unknown cmd fd(3) cmd(00001260) arg(effffcac)

hmms not total true
also when i don't use the swap etc i have the error
