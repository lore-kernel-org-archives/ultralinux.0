From: Robert Love <rml@tech9.net>
Date: Thu, 21 Feb 2002 16:52:08 +0000
Subject: Re: 2.5.5 on Sparc, Ughh...
Message-Id: <marc-linux-ultrasparc-101431036622004@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101422154814029@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101422154814029@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 2002-02-21 at 03:04, george anzinger wrote:

> Uh, Dave, could you expound a bit on why you need a preemption lock
> around the notify parent/ schedule code?  We have not found this to be
> needed on other archs, but maybe we missed something.

2.5 has diverged from the "patch" version of the code.  We removed the
PREEMPT_ACTIVE flag and thus have a race against parent/wake up.  All
arches disable preemption there.

	Robert Love

