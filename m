From: Karel van Houten <K.H.C.vanHouten@research.kpn.com>
Date: Tue, 03 Nov 1998 17:53:21 +0000
Subject: UtraLinux 1.0.9 on IPC -> Data Access Exception
Message-Id: <marc-linux-ultrasparc-91011668020844@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

After successfully installing UltraLinux on a SparcClassic,
I tried to install my IPC also. But after the system loads
the tftp file, it just gives: Data Access Exception:

----------------------------------------------------------
SPARCstation IPC, No Keyboard
ROM Rev. 2.9, 36 MB memory installed, Serial #4267322.
Ethernet address 8:0:20:f:4e:1f, Host ID: 52411d3a.


Testing   1 megs of memory. Still to go    0
                                                                      
Type  help  for more information
ok boot net
Boot device: /sbus/le@0,c00000   File and args: 
291600 

Data Access Exception
ok 
----------------------------------------------------------

The tftp image files was dated:
2676522 Oct 29 16:04 tftpboot.img

-- 
Karel van Houten
