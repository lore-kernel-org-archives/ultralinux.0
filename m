From: "Pat O'Rourke" <orourke@missioncriticallinux.com>
Date: Fri, 11 Feb 2000 21:21:38 +0000
Subject: Re: serial console
Message-Id: <marc-linux-ultrasparc-95032461205045@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95030299721929@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95030299721929@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Matthew Jacob wrote:

> define 'not work'? I've had the serial console just be 'strange' when running
> it in a screen session so I just type 'reset'.

It receives no output (kernel printk's don't show up) and does not accept
input.  I've been using minicom and the status bar shows 'offline' right
after the message 'Booting Linux...' appears (note this is a prom_printf
as opposed to a printk).

Pat


-- 
Patrick O'Rourke
orourke@missioncriticallinux.com
