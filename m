From: Thomas Klaube <Klaube@noc.dfn.de>
Date: Fri, 26 Mar 1999 20:42:24 +0000
Subject: good news and bad news
Message-Id: <marc-linux-ultrasparc-92248295927840@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

good news:
Netscape has released some binary versions of their Netscape communicatior
version 4.51 in the unsupported section. There is a sparc version too..
(ftp://ftp.netscape.com/pub/communicator/4.51/english/unix/unsupported/linux20_sparc_glibc2/)

bad news: 
I cant make it work :-(. Its the same error as the 4.5 sparc version:
bash-2.01$ ./netscape 
./netscape: error in loading shared libraries
/usr/lib/libstdc++.so.2.8: undefined symbol: __register_frame_info

I have installed the latest libstdc++.so.2.8 I could find. 
I am wondering against wich libstdc++ they linked the binary...

Was anyone able to start the binary?

BTW: Right now I use the SunOS version of netscape 4.5... with some
frobbing in the kernelsource you can enable the SunOS emulation, but its
not really stable, so be carefu; :-)

Regards 
Thomas
