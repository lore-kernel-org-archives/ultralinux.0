From: Eric Brower <ebrower@usa.net>
Date: Wed, 24 Dec 2003 02:01:39 +0000
Subject: Re: environmental monitoring
Message-Id: <marc-linux-ultrasparc-107223135327134@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Clint Adams wrote:
>>> On a Netra t1 105, it is possible to use the envctrl kernel module
>>> to read the CPU temperature.  Is this possible with a Netra T1 AC200?
>>>
>>Not currently.
> 
> 
> What needs to be done to adapt the driver?

A driver needs to learn about the OBP format used on a particular 
platform for environmental monitoring.  In the case of the T1/200 it may 
be similar enough to the existing bbc_envctrl driver (written for an 
SB1000) that you can adapt it for use on your system.  At the very 
least, you'll have to remove the bbc_present() test.

If you want temperatures available to userspace, additional 
modifications will be required as well.  I believe the current 
bbc_envctrl driver monitors, but does not export, this information.

If you are interested in doing this work I suggest you post to the 
development list (ultralinux@vger.kernel.org).

E

