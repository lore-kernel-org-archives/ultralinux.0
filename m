From: Frank Stolze <fstolze@yahoo.com>
Date: Sat, 13 Jun 1998 01:01:00 +0000
Subject: Ultra 5
Message-Id: <marc-linux-ultrasparc-90222357631012@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531023@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531023@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Some feedback regarding booting UltraLinux on an
Ultra 5:

I have not been able to do a successful net boot for
UltraLinux 1.0 and 1.0.9 on an Ultra 5.

1.0:  After loading the tftp boot image, there is a
      simple error message:

      Strange OBP version 'OBP 3.11.9 1998/03.06 10:31'
      Program terminated

      and you're back at the ok prompt.

1.0.9: The tftp boot image is loaded, the display
       switches to the white-on-black Linux display
       and the usual Linux kernel boot messages show
       up. After the line:

       hdc: packet command error: status=0x0d { Busy }

       the system hangs indefinitely. Looking through
       the messages the only thing that looks weird
       is the irq number "-1073739808" given for both
       ide0 and ide1.


Regards,
Frank Stolze

_________________________________________________________
DO YOU YAHOO!?
Get your free @yahoo.com address at http://mail.yahoo.com
