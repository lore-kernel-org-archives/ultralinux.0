From: ddx@ddx.ml.org
Date: Sat, 16 May 1998 19:01:58 +0000
Subject: Re: 2.1.102 and ipfwadm
Message-Id: <marc-linux-ultrasparc-90222356531045@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531042@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531042@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



On Sat, 16 May 1998, David S. Miller wrote:

> 
> You need to install the new ipfwchains utilities from:
> 
> http://www.adelaide.net.au/~rustcorp/ipfwchains/ipfwchains.html
hmms ok i have it
problem is i can't get it working how i want it...
hope som1 here has done it and can say me how to do
i asked on irc on some linux channels
but all guys answered to go back to 2.1.101

i normally did :


ipfwadm -F  -p deny
ipfwadm -F -a m -S 192.168.0.0/24 -D 0.0.0.0/0     


but from now this does not work
so i did try some thing with that new tool

ipchains -A forward  -j DENY
ipchains -I forward -j ACCEPT  -s 192.168.0.0/24 -d 0.0.0.0/0        

what i think would do the same after looking in the docs


[root@ddx /root]# ipchains -L forward
Chain forward (policy ACCEPT):
target     prot opt     source                destination           ports
ACCEPT     all  ------  192.168.0.0/24        anywhere              n/a
DENY       all  ------  anywhere              anywhere              n/a        

but then ping and telnet from an internal box does not work

so i hope som1 here can tell me what i do wrong...



> 
> And I don't want to hear complaints about this, if you use CVS you
but what i heard cvs was the only way to get a working kernel
cose i can't use normal kernel files



> deal with late breaking (no pun intended) developments and changes to
> the code.  What ends up in UltraPenguin will have the updated ipfwadm
> utility from the ipfwchains toolset to complement the ipfw rewrite in
> the kernel.
ok i understand
