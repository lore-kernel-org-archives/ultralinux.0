From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Thu, 07 May 1998 08:41:46 +0000
Subject: Re: NIS pbs
Message-Id: <marc-linux-ultrasparc-90222356530979@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530971@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530971@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Wesley Hosking wrote:
> You need to set the NIS domainname in /etc/sysconfig/networks
> 
> ie: add
> NISDOMAIN=yourdomainname
> to the end of the file.
> 
> If you want to check out whats happenning look at /etc/rc.d
> 
> in rc.sysinit you have :
> 
> # Set the NIS domain name
> if [ -n "$NISDOMAIN" ]; then
>     domainname $NISDOMAIN
> else
>     domainname ""
> fi
> 
> (Which is set from the networks file)

Yes, I saw it. Thanks. My post was just to say that the command
'domainname' or 'hostname -y' without any argument does not give the
right output (under certain circumstances). On the other hand, the
system seems to use the right NIS domain name value, so no problemo at
all :-).

>  > 
>  > 2)
>  > > rpm -Uvh ypbind-3.3-3.sparc.rpm 
>  > ypbind                      #############################################>  > #####
>  > > cd /etc/rc.d
>  > > find . -name '*ypbind*' -ls   
>  > 101712 1 -rwxr-xr-x 1 root root 863 May  4 13:39 ./init.d/ypbind
>  > 132156 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc0.d/K30ypbind -> ../i>  > nit.d/ypbind
>  >   6236 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc1.d/K30ypbind -> ../i>  > nit.d/ypbind
>  >  48874 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc2.d/K30ypbind -> ../i>  > nit.d/ypbind
>  >  79342 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc3.d/K30ypbind -> ../i>  > nit.d/ypbind
>  >  89412 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc4.d/K30ypbind -> ../i>  > nit.d/ypbind
>  > 101715 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc5.d/K30ypbind -> ../i>  > nit.d/ypbind
>  > 122203 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc6.d/K30ypbind -> ../i>  > nit.d/ypbind
>  > 
>  > I don't know how to setup these links to start ypbind correctly at boot t>  > ime.
> 
> Normally in rh5.0 you can change this with the level editor (whatever
> its called ? ).
> 
> In the above cases change the K to an S for the levels you want it
> running in ie: 3,4,5
> 
> ie: rc3.d/S30ypbind
> 

Here also, I did not want to say, hey this does not work !, but just
precise that the links are not correctly configured by the rpm
installation process. To set up correctly the links, I used
'chkconfig':
chkconfig --levels 345 ypbind on

Be careful, this does not only change the K to an S, but K30 to S70
(see init.d/ypbind).

> wes
> 
> PS: hopes this helps, I had trouble because I was specifying NISDOMAIN
> as NIS_DOMAIN

So do I.


Thierry Lafage.

PS. A special thanks to Felix von Leitner who provided great help ;-).
