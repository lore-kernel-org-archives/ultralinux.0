From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Wed, 20 Mar 2002 10:53:49 +0000
Subject: sys_call clone in Sparc64?
Message-Id: <marc-linux-ultrasparc-101663078500638@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

I trying to work on some code which uses the sys_clone system call.
It wasn't working (wasn't reporting an error either) so I wanted to
know why. 

I grepped throught the kernel source (2.4.19-pre3) and found that 
sys_clone doesn't seem to have been implemented on Sparc or Sparc64. 

Is this correct? Anybody working on it? If not, I'll have a stab at it.

Cheers,
Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
" ... new TV ad for Microsoft's Internet Explorer e-mail program which 
uses the musical theme of the "Confutatis Maledictis" from Mozart's 
Requiem. "Where do you want to go today?" is the cheery line on the 
screen, while the chorus sings "Confutatis maledictis, flammis acribus
addictis,". This translates to "The damned and accursed are convicted
to the flames of hell."
