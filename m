From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Thu, 30 Jul 1998 15:35:08 +0000
Subject: Suggestion for linux install
Message-Id: <marc-linux-ultrasparc-90222358531100@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi folks,

As I was installing Linux on my Ultra5, the script stopped and told me that it 
could not find a binutils file.  There was one in the RPMS, but it was a later 
rev than the script wanted.  I don't know why the script decided it needed that 
particular rev, but the only alternative offered me was "ok", so no binutils was 
loaded.  Fortunately I did not need binutils for my installation at this time.  
I loaded the .106 kernel and everything dated up to June 24 into my server for 
this install.

My suggestion is that when the script detects that a file is missing, it should 
also permit the installer to enter a file name to load in place of the one it is 
asking for (or to continue as now).  This would eliminate the necessity of 
installing the file later, and could complete the install with all the correct 
stuff. 

By the way, the comps file dated April 16, which chooses what packages to load, 
wanted gtk and did not recognize gtk+ files, so I edited comp to choose gtk+. 
Also, several functions required glib, which is not called out in the comps 
file. Is there a new comps file coming/needed?


David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
