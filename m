From: Andi Kleen <ak@muc.de>
Date: Thu, 16 Jul 1998 23:37:07 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531051@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

"David S. Miller" <davem@dm.cobaltmicro.com> writes:

> (side comment: this *.il inline assembler interface of sunpro is one
> of the things I totally think they got wrong and which gcc has a much
> superier interface, look at the syntax, it's just gross)

The big advantage of the Sun solution is that their templates are schedulable,
while this is just impossible with the gcc inline assembly.

-Andi
