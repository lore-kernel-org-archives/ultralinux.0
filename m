From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Fri, 26 Mar 1999 19:38:53 +0000
Subject: Re: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92247766623733@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92255674631513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92255674631513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Flavio,

Are you trying to put all three (or four) Ethernet connections on that 
Ultra30 in the same domain?  If not, disregard the following.

As far as I know, each ethernet connection from a given system must be in a 
different domain, otherwise one default connection (usually eth0) always 
defines that system's interface. 

David
------
------------- Begin Forwarded Message -------------

Date: Fri, 26 Mar 1999 09:10:48 -0800 (PST)
From: Bob Hogg <bob@jacklondon.net>
To: Flavio Pescuma <edtfopa@malmen.ericsson.se>
cc: ultralinux@vger.rutgers.edu
Subject: Re: Multi Happy Meal Ethernet problem
MIME-Version: 1.0
X-Loop: majordomo@vger.rutgers.edu
X-Orcpt: rfc822;ultralinux-outgoing

Hm....I've got an Ultra 1 that has 2 HME's and they work fine - I'm using
that machine as a router at the moment, actually.....it's working quite
well.

-bob

On Fri, 26 Mar 1999, Flavio Pescuma wrote:

> Hi,
> 
> I have just succeeded to install ultralinux-1.1.9 on a Ultra 30
> machine.  This machine has three Happy Meal ethernet cards, the problem
> I have is that eth0 works fine but the other two doesn't.  The module
> seems to work perfectly because it recognize the three of them,  but
> neither eth1 nor eth2 receive any traffic at all.
> 
> Thanks in advance,
> 
> Flavio
> 
> 
> 
> --
> WIRE - Web & Internet Resources at Ericsson
> Flavio Pescuma           phone: +46 (0)8 7263359
> L M Ericsson Data AB     fax:   +46 (0)8 7217207
> 125 82 Stockholm Sweden  http://eriweb.ericsson.se
> 
> 
> 
> 


------------- End Forwarded Message -------------


David Andrew                Tel:  781-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  781-442-1520	
Sun Microsystems, 1 Network Drive - M/S UBUR01-203,   Burlington, MA 01803	 
e-mail:  david.andrew@sun.com
