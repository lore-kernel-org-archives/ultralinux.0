From: "Raymond Hall H." <kovalski@ife.org.mx>
Date: Wed, 11 Aug 1999 01:10:10 +0000
Subject: Re: serial port overrruns
Message-Id: <marc-linux-ultrasparc-93436642428094@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93396885301754@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93396885301754@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 10 Aug 1999, Gert Doering wrote:

> When exactly does the "freeze" appear?  At "modem rings" time, or when
> the user has already logged in?  At logout time (DCD dropping)?

It appears that, after dropping the connection, the modem doesn't reset 
properly:

Here's mgetty log before the connection:

 08/10 14:40:01 yS1  mgetty: experimental test release 1.1.14-Apr02
 08/10 14:40:01 yS1  check for lockfiles
 08/10 14:40:01 yS1  locking the line
 08/10 14:40:01 yS1  lowering DTR to reset Modem
 08/10 14:40:02 yS1  send: \dATQ0V1H0[0d]
 08/10 14:40:02 yS1  waiting for ``OK'' ** found **
 08/10 14:40:03 yS1  send: ATS0=0Q0&D3&C1[0d]
 08/10 14:40:03 yS1  waiting for ``OK'' ** found **
 08/10 14:40:03 yS1  waiting...
 08/10 14:58:48 yS1  waiting for ``RING'' ** found **
 08/10 14:58:48 yS1  send: ATA[0d]
 08/10 14:58:48 yS1  waiting for ``CONNECT'' ** found **
 08/10 14:58:59 yS1  send:
 08/10 14:58:59 yS1  waiting for ``_'' ** found **
 08/10 14:59:00 ##### data dev=ttyS1, pid088, caller='none', 
 conn='33600/ARQ/V34/LAPM/V42BIS', name='', cmd='/usr/lib/uucp/uucico', 
user='jd04jal'

Here's the entry right after:

 08/10 14:59:04 yS1  mgetty: experimental test release 1.1.14-Apr02
 08/10 14:59:04 yS1  check for lockfiles
 08/10 14:59:04 yS1  locking the line
 08/10 14:59:05 yS1  WARNING: DCD line still active, check modem settings (AT&Dx)
 08/10 14:59:05 yS1  lowering DTR to reset Modem

 ^^^\__  this is the lapse where the server hangs, 103 seconds fortunately,
 vvv/    but it has taken up to 30 minutes!! (yes, I did check those modem
         settings, and it is supposed to lower DCD after carrier drops)
         The funnier part is that the modem doesn't do this all the time.
         I even checked with another modem and got the same ocassional bug.

 08/10 15:00:48 yS1  clean_line: only 500 of 4095 bytes logged
 08/10 15:00:48 yS1  send: \dATQ0V1H0[0d]
 08/10 15:00:49 yS1  waiting for ``OK'' ** found **
 08/10 15:00:49 yS1  send: ATS0=0Q0&D3&C1[0d]
 08/10 15:00:49 yS1  waiting for ``OK'' ** found **
 08/10 15:00:49 yS1  waiting...
 08/10 16:00:48 yS1  checking if modem is still alive
 08/10 16:00:48 yS1  mdm_send: 'AT' -> OK
 08/10 16:00:49 yS1  waiting...
 08/10 17:00:48 yS1  checking if modem is still alive
 08/10 17:00:48 yS1  mdm_send: 'AT' -> OK
 08/10 17:00:49 yS1  waiting...
 08/10 18:00:48 yS1  checking if modem is still alive
 08/10 18:00:48 yS1  mdm_send: 'AT' -> OK
 08/10 18:00:48 yS1  waiting...
