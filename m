From: Chris Jackson <cjackson@ctel.net>
Date: Wed, 03 May 2000 17:38:03 +0000
Subject: Re: Help!! sparc Ultra5 w/ RH6.1 crashing
Message-Id: <marc-linux-ultrasparc-95737840825161@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95736359507836@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95736359507836@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Just someone trying authenticate with user ftp several times a second:
Apr 30 21:45:45 kronos proftpd[32741]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 
Apr 30 21:45:53 kronos proftpd[32760]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 
Apr 30 21:45:53 kronos proftpd[32761]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 
Apr 30 21:45:53 kronos proftpd[32762]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 
Apr 30 21:45:53 kronos proftpd[32764]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 
Apr 30 21:45:54 kronos proftpd[32763]: kronos.ctel.net
(c187116086.telekabel.chello.nl[212.187.116.86]) - USER ftp (Login
failed): Invalid shell. 

franks@plk.af.mil wrote:
> 
> ------- Forwarded Message
> 
> To: "ultralinux@vger.rutgers.edu" <ultralinux@vger.rutgers.edu>
> Subject: Help!! sparc Ultra5 w/ RH6.1 crashing
> Content-Type: text/plain; charset=us-ascii
> Content-Transfer-Encoding: 7bit
> Sender: owner-ultralinux@vger.rutgers.edu
> Precedence: bulk
> X-Loop:         majordomo@vger.rutgers.edu
> X-Orcpt: rfc822;ultralinux-outgoing
> 
> I have an Ultra5 that hangs every 2 weeks or so for no reason (that's
> clear to me...)
> 
> (deletia...)
> 
> The only log entries in any of the logs during the time just before the
> last crash was someone probing our ftp server (proftpd 1.2.0pre10) Is
>                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>     could you elucidate on this in more detail?
> 
> there any script kiddie methods of bringing down the box that I haven't heard
> of?
> 
> ( more deletia...)
> 
> ------- End of Forwarded Message
> 
> ed
> 
> --
>   Ed Franks                      |  Contracted to :
>   SysAdmin - Solaris/SunOS/Linux |    CIO Office
>   UNISYS Federal Systems         |    Air Force Research Lab
>   Albuquerque, NM                |    Kirtland AFB
