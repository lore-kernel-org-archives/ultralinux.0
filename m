From: Bob Drzyzgula <bob@drzyzgula.org>
Date: Thu, 23 Jul 1998 01:08:48 +0000
Subject: Re: Ultra 5...
Message-Id: <marc-linux-ultrasparc-90222358531072@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531071@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531071@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, Jul 22, 1998 at 06:02:31PM -0600, Alberto Brealey wrote:
> 
> 3. Is there a way of adapting the Sun *old?* vga connector (15 or
> something pin + 2 coax) to the traditional vgs *pc?* connector in the
> ultra 5 (i got a sun monitor that i like, but we got an ugly as hell new
> sun monitor with the 15 pin interface).

The "old" connector is a 13W3. Most older Sun monitors
would only work with composite sync (H and V on the
same line). Some of the latest Sun monitors (still
with 13W3 connectors, even) would work with seperate
H and V sync (the VGA standard), but it would have to
be pretty recent...  like Ultra era at least. I do not
know if the Ultra 5 will do composite sync, but I would
guess not... it is an ATI Mach 64 video interface, I
believe. So, *if* your good monitor supports seperate
sync, *or if* the Ultra 5 supports composite sync, then
you would probably be able to do it. If so, you can get
13W3 to HDB-15 (VGA) adapters from a variety of sources;
one is L-Com (http://www.L-com.com -- I don't know if they
sell internationally, but their website only lists an 800
number, bad sign). Merely having the adapter won't help
if you can't get the devices to agree on sync. Actually,
Sun should be able to tell you since they are all Sun
parts.

--Bob

-- 
==============================
Bob Drzyzgula                             It's not a problem
bob@drzyzgula.org                until something bad happens
==============================
