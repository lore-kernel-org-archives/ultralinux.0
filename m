From: "Jerry Cloe" <jerrylist@showmeisp.net>
Date: Fri, 05 Jan 2001 21:25:09 +0000
Subject: RE: Storage options for Sun E450 / Linux?
Message-Id: <marc-linux-ultrasparc-97873070001021@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-97872904429351@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-97872904429351@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I don't have a specific recommendation for you on software vs hardware
except to say that the performance edge with hardware is almost always worth
the extra $$$.  I would say the final decision should lay with how much of a
load your going to put on the SQL database server, light usage, go software,
heavy usage, go hardware.

Something that I do want to comment on, is the case of the E450.  I'm not
familiar with this particular box, but other cases that have lots of room
can handle a cabinet full of 9gig's just fine but will burn up 18 and 36 gig
drives (yes, they do run hotter).  I kept burning up drive after drive and
when I got ahold of tech support and they figured out I kept burning up
drives, it finally came down to a heat problem.  Spread them across another
expansion cabinet and everythign was just fine.  Now I don't know the
cooling fan situation and stuff with your box, but it is a big problem I've
seen...



> -----Original Message-----
> From: sparclinux-owner@vger.kernel.org
> [mailto:sparclinux-owner@vger.kernel.org]On Behalf Of
> sean.upton@uniontrib.com
> Sent: Friday, January 05, 2001 3:12 PM
> To: sparclinux@vger.kernel.org; ultralinux@vger.kernel.org
> Subject: Storage options for Sun E450 / Linux?
>
>
> I have a Sun Ultra Enterprise 450 Server that is likely going to end up
> running Linux for use as a PostgreSQL database server and occasional file
> server (using knfsd, only as a hot backup to another box).   As
> some of you
> may know, compared to other Sun hardware, the E450 has lots of internal
> expansion room; right now, I'm currently evaluating storage
> options for it,
> as I only have a minimal configuration (4 9GB disks).
>
> I likely plan on filling up the other 16 bays with 18GB and/or
> 36GB drives,
> and am evaluating options in deciding hardware vs. software RAID.  The
> likely setup here would be several volumes of RAID 0+1, which shouldn't be
> very taxing on the CPU in the software RAID setup.  However, I wonder what
> hardware RAID options might be open to me for internal expansion.
>
> Is anybody using an E450 with hardware RAID controllers they would
> recommend?  Anybody using software RAID with multiple USCSI controllers in
> the E450?  Are the USCSI controllers that are bundled with the 8-slot
> backplanes that Sun sells supported by the kernel?  What about the RAID
> controllers?
>
> Out of curiosity, what does it take to support RAID controllers
> supported by
> Linux/Intel to work on Linux/Sparc?
>
> Sorry to sound like a real novice here; I've got plenty of experience with
> Linux on Intel and PPC - and I'm comfortable working with Linux on Sparc,
> but the extent to which I have used ultralinux is only on my Ultra 10
> workstation, not on any bigger hardware like the 450.
>
> I'd be grateful to anyone who had any thoughts here.
> Thanks,
> Sean
>
> ============> Sean Upton
> Senior Programmer/Analyst
> SignOnSanDiego.com
> The San Diego Union-Tribune
> 619.718.5241
> sean.upton@uniontrib.com
> ============> -
> To unsubscribe from this list: send the line "unsubscribe sparclinux" in
> the body of a message to majordomo@vger.kernel.org
>

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
