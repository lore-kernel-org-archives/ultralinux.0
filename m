From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Wed, 04 Nov 1998 01:16:36 +0000
Subject: Re: Still no go with 10mb on 100mb card
Message-Id: <marc-linux-ultrasparc-91014927505420@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91009247508389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91009247508389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 3 Nov 1998, David S. Miller wrote:
>    Date: 	Tue, 3 Nov 1998 12:29:08 +0100 (CET)
>    From: Stephan van Hienen <ddx@cable.a2000.nl>
> 
>    no go with the sun happy meal on eth0 (on the scsi/ethernet pci board)
>    it's connected to a cable modem at 10mbit/sec half duplex
>    and it gives ethernet time outs
> 
> All I can say at this point is that you  must have some very strange
> ethernet switch/hub because every single switch/hub I test on here at
> Cobalt with both 10 and 100baseT & both full and half duplex all work
> correctly with the happy meal.
> 
> Try another hub/switch/network if you can, I bet it works.
> 
> Then we can figure out what is so strange about the one where you have
> the problems.

the card is directly connected to a LANcity cable modem

the only thing i can think of is that the ethernet adres is changed when i
boot the 2.1.125 kernel

i will look this thing out this week
maybe (i hope) it's this

this because the cablemodem only responds to the ethernet adress that has
been programmed in the eeprom (or something) inside the cablemodem

it's only strange that 2.1.112 works ok

and that 2.1.125 doesn't :( 
