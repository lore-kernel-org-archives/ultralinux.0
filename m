From: Peter Jones <pjones@redhat.com>
Date: Fri, 26 Mar 1999 19:46:33 +0000
Subject: Re: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92247812423993@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92255674631513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92255674631513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 26 Mar 1999, David Andrew - Sun MDE wrote:

> Flavio,
> 
> Are you trying to put all three (or four) Ethernet connections on that 
> Ultra30 in the same domain?  If not, disregard the following.
> 
> As far as I know, each ethernet connection from a given system must be in a 
> different domain, otherwise one default connection (usually eth0) always 
> defines that system's interface. 
> 
> David

Um.... I'm failing to see how that makes any sense at all.  If he's got
individual IPs for each of the cards, and he's got a route for each of
them, then they _should_ all work.  DNS doesn't have anything to do
with that.

 -- Peter

The object of war is not to die for your country but to make the
  other bastard die for his. --Gen. George Patton (1885-1945)
