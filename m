From: Wesley Hosking <wes@atlantek.com.au>
Date: Fri, 25 Sep 1998 06:12:36 +0000
Subject: Boot of 1.0.9 fails on Sun Ultra 1
Message-Id: <marc-linux-ultrasparc-90671769707424@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Rick Richardson writes:
 > 
 > 
 > At the "ok" prompt, we booted off the network using the following
 > command.  The machine sucked down the boot image from the tftp server,
 > and then ended with an error message "Couldn't get translation
 > property".  Here is what is on the screen:
 > 
 > 	ok boot /pci@1f,4000/pci@4/SUNW,hme@0,1
 > 	Boot device: /pci@1f,4000/pci@4/SUNW,hme@0,1      File and args:
 > 	27a800 TILO
 > 
 > 	Couldn't get translation property
 > 	Program terminated
 > 	ok
 > 
 > 
 > Does anybody know what this means and how to correct the problem?
 > 
 > We'd really like to be able to port the drivers for some of our
 > new PCI boards from linux/i386 to the UltraSparc.
 > 

Rick has anyone answered this question for you yet ?

I get EXACTLY the same error when I installed onto an Ultra 30, and I
have put in another ethernet card !.

	309a00
	Couldn't get translation property.
	Program terminated.


This dissapears when I remove the card and the whole thing install
properly....

(I too would like to find an answer to this one, - it would be nice to 
have an extra SCSI and ethernet port (I have a SUN supplied PCI
ethernet card ) ).

wes
