From: Fredrik Lundholm <exce7@ce.chalmers.se>
Date: Fri, 30 Nov 2001 15:15:09 +0000
Subject: Re: openssh 3.0.1 rpm for sparc (redhat 6.x)
Message-Id: <marc-linux-ultrasparc-100713345206758@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100679315520732@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100679315520732@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Because not many applications try to build 64-bit executables on 
suitable platforms. What happenes it that openSSL detects a 64 bit KERNEL and
therefore assumes you want a 64 bit application/userland.
Most applications dont give a shit about 64-bits and builds a 32 bit binary.

/wfr
Fredrik



On Fri, Nov 30, 2001 at 04:06:12PM +0100, Stephan van Hienen wrote:

> 
> P.s. why can I rebuild a lot of src.rpms witouth this ?
> 

