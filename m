From: "Aldrin Martoq A." <agm@cec.uchile.cl>
Date: Sat, 09 Oct 1999 15:15:49 +0000
Subject: Re: Problem with XF
Message-Id: <marc-linux-ultrasparc-93948156707469@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93945657325858@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93945657325858@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 9 Oct 1999, JORGE HERNANDEZ SERRANO wrote:
> Hi every body!
> I've installed RedHat linux 6.0 on an SPARCclassic workstation.
> The Xconfigurator program detected  the following: 
[...]
> I ran the startx script and it works fine but about fiftheen minutes
> working in any graphical enviroment, it crash! Any place i move the mouse
> is delete. It looks like my mouse was an eraser, an the I have to go back
> to one terminal in text mode.
> And the terminal where I been executed the startx display the following
> message:
There was a bug in a release of egcs, which was used to build the kernel,
XFree and many others. The solution: go to the redhat errata pages and
download the updates. After updating the kernel to 2.2.5-22 and XFree at
least, my sparc4 was solid like a rock till today.

Aldrin.            "Caution! Under no circumstances confuse the mesh with the
Area de Ingenieria  interleave operator, except under confusing circumstances!"
CEC U.Chile         The INTERCAL Programming Language Revised Reference Manual
