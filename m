From: Eric Brower <ebrower@gmail.com>
Date: Thu, 24 Feb 2005 20:10:19 +0000
Subject: Re: [RFC/PATCH] envctrl framework and envctrltwo (UE250) driver
Message-Id: <ec7cefb0502241210741553b3@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
In-Reply-To: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Will do-- I'll keep you posted.  The last copyright holder didn't have
any issues with the patch; I've not heard back from the lm78 folks.

Thanks,
E


On Thu, 24 Feb 2005 11:54:30 -0800, David S. Miller <davem@davemloft.net> wrote:
> On Tue, 22 Feb 2005 10:07:55 -0800
> Eric Brower <ebrower@gmail.com> wrote:
> 
> > Attached is a patch against a somewhat dated BK 2.6.10 that provides
> > the following:
> >
> >   1) a basic framework for supporting SUNW,envctrl environmental
> > monitoring flavors
> >   2) an implementation of the framework for basic SUNW,envctrltwo
> > (UE250) support
> 
> I like this a lot.  But I'd like to see the I2C layer maintainer
> take your lost-arbitration changes in before I merge in your
> envctrl driver.  Ok?
> 
> It looks like greg@kroah.com is the most active in this area, perhaps
> contacting him might get a quicker response than the lm-sensors folks.
> 


-- 
E
