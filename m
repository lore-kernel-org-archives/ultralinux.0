From: MattS@ilx.com
Date: Sat, 13 Mar 1999 15:27:17 +0000
Subject: FW: Run Level 5 problems
MIME-Version: 1
Content-Type: multipart/mixed; boundary="----_=_NextPart_001_01BE6D65.FA8D0D28"
Message-Id: <marc-linux-ultrasparc-92133911604379@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92127776107725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92127776107725@msgid-missing>
To: ultralinux@vger.kernel.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01BE6D65.FA8D0D28
Content-Type: text/plain

There is a file in /var/log... xdm-error.log. I have used it to troubleshoot
many a failed login attempt.  Also, I have found that just because you can
run startx and get into X ok, doesn't mean xdm will work. Sometimes xdm
won't recognize your .xinitrc or other startup file, alot of time it wants
.Xsession and .Xsession only. and sometimes it has to be executable. and
sometimes if you declare variables in your .Xsession they don't take.
(Although I suspect some of these problems were due to a buggy beta KDE
release.) I know the question had already been answered, I just wanted to
vent :) God I love Unix. =P

Matt

> -----Original Message-----
> From:	Steve Dunham [SMTP:dunham@cse.msu.edu]
> Sent:	Saturday, March 13, 1999 1:02 AM
> To:	David Andrew - Sun MDE
> Cc:	ultralinux@vger.rutgers.edu
> Subject:	Re: Run Level 5 problems
> 
> David Andrew - Sun MDE <David.Andrew@East.Sun.COM> writes:
> 
> > I have been successful in loading UltraPenguin-1.1.9 in many Ultra
> > platforms, but have not been able to log in at Run level 5.  Is
> > there something I am missing?  I have done it as root, as well as
> > with another username.  As soon as the name and password are
> > entered, it tries to do something, then comes back up with the same
> > login screen, with no reasonable exit.  I am running the newest UP
> > RPMS, including the 2.2.2-3 kernel files, but this happened on
> > earlier versions as well.
> 
> > I can get the X up with startx, but not by going to run level5.
> > This happens even if I have already logged in at level 3.
> 
> > Is this a known bug?
> 
> This generally happens when the startup scripts that xdm spawns
> (Xsession) tries to run something like a window manager and fails
> (when the script that runs the window manager exits, X will exit and
> xdm will restart).  There _should_ be a file with a name similar to
> ".xsession.log" or ".xsession-errors" in the user's home directory
> which may provide more insight into what exactly is going wrong (I'd
> suspect a missing program or a bad path.)
> 
> 
> Steve
> dunham@cse.msu.edu

------_=_NextPart_001_01BE6D65.FA8D0D28
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3DUS-ASCII">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2232.0">
<TITLE>FW: Run Level 5 problems</TITLE>
</HEAD>
<BODY>

<P><FONT COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">There is a file in =
/var/log... xdm-error.log. I have used it to troubleshoot many a failed =
login attempt.&nbsp; Also, I have found that just because you can run =
startx and get into X ok, doesn't mean xdm will work. Sometimes xdm =
won't recognize your .xinitrc or other startup file, alot of time it =
wants .Xsession and .Xsession only. and sometimes it has to be =
executable. and sometimes if you declare variables in your .Xsession =
they don't take. (Although I suspect some of these problems were due to =
a buggy beta KDE release.) I know the question had already been =
answered, I just wanted to vent :) God I love Unix. =3DP</FONT></P>

<P><FONT COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">Matt</FONT>
</P>

<P><FONT SIZE=3D1 FACE=3D"Arial">-----Original Message-----</FONT>
<BR><B><FONT SIZE=3D1 FACE=3D"Arial">From:&nbsp;&nbsp;</FONT></B> <FONT =
SIZE=3D1 FACE=3D"Arial">Steve Dunham [SMTP:dunham@cse.msu.edu]</FONT>
<BR><B><FONT SIZE=3D1 FACE=3D"Arial">Sent:&nbsp;&nbsp;</FONT></B> <FONT =
SIZE=3D1 FACE=3D"Arial">Saturday, March 13, 1999 1:02 AM</FONT>
<BR><B><FONT SIZE=3D1 =
FACE=3D"Arial">To:&nbsp;&nbsp;&nbsp;&nbsp;</FONT></B> <FONT SIZE=3D1 =
FACE=3D"Arial">David Andrew - Sun MDE</FONT>
<BR><B><FONT SIZE=3D1 =
FACE=3D"Arial">Cc:&nbsp;&nbsp;&nbsp;&nbsp;</FONT></B> <FONT SIZE=3D1 =
FACE=3D"Arial">ultralinux@vger.rutgers.edu</FONT>
<BR><B><FONT SIZE=3D1 =
FACE=3D"Arial">Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>=
</B> <FONT SIZE=3D1 FACE=3D"Arial">Re: Run Level 5 problems</FONT>
</P>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">David Andrew - Sun =
MDE &lt;David.Andrew@East.Sun.COM&gt; writes:</FONT>
</P>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; I have been =
successful in loading UltraPenguin-1.1.9 in many Ultra</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; platforms, but =
have not been able to log in at Run level 5.&nbsp; Is</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; there =
something I am missing?&nbsp; I have done it as root, as well as</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; with another =
username.&nbsp; As soon as the name and password are</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; entered, it =
tries to do something, then comes back up with the same</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; login screen, =
with no reasonable exit.&nbsp; I am running the newest UP</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; RPMS, =
including the 2.2.2-3 kernel files, but this happened on</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; earlier =
versions as well.</FONT>
</P>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; I can get the X =
up with startx, but not by going to run level5.</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; This happens =
even if I have already logged in at level 3.</FONT>
</P>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">&gt; Is this a known =
bug?</FONT>
</P>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">This generally =
happens when the startup scripts that xdm spawns</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">(Xsession) tries to =
run something like a window manager and fails</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">(when the script =
that runs the window manager exits, X will exit and</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">xdm will =
restart).&nbsp; There _should_ be a file with a name similar to</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 =
FACE=3D"Arial">&quot;.xsession.log&quot; or =
&quot;.xsession-errors&quot; in the user's home directory</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">which may provide =
more insight into what exactly is going wrong (I'd</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">suspect a missing =
program or a bad path.)</FONT>
</P>
<BR>

<P><FONT COLOR=3D"#000000" SIZE=3D2 FACE=3D"Arial">Steve</FONT>
<BR><FONT COLOR=3D"#000000" SIZE=3D2 =
FACE=3D"Arial">dunham@cse.msu.edu</FONT>
</P>

</BODY>
</HTML>
------_=_NextPart_001_01BE6D65.FA8D0D28--
