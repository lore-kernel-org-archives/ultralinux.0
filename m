From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 02 Dec 1998 16:12:30 +0000
Subject: New Sun keymaps
Message-Id: <marc-linux-ultrasparc-91263202706583@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I have added Czech/US, US/Czech Sun Type 5 keymaps, plus modified all
but french to handle Euro and Cent. Could you test it if you can and report
any problems to me?
Euro is usually shown by 
AltGr E, Compose e Cent by
AltGr C
In order to keep the AltGr HexDigit HexDigit working, I had to change the
bindings, so that for A-F hex digits you need to hold shift as well, ie.
you type character 0xEE by 
AltGr Shift E, AltGr Shift E
in fact, for A-B,D,F letters you don't need to hold the shift.

I'll be putting fonts that will be useful with latin0, latin1 and latin2
unicode maps (all will have Euro in) together with console-tools RPM in
UP1.2.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
