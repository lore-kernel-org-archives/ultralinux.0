From: Eric Brower <ebrower@gmail.com>
Date: Tue, 22 Feb 2005 22:27:58 +0000
Subject: Re: [RFC/PATCH] envctrl framework and envctrltwo (UE250) driver
Message-Id: <ec7cefb0502221427559cce6d@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
In-Reply-To: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

DaveM, et. al,

It occurred to me that we had spoken a long while back about
coalescing the logic for system LED blinking into one location (one
timer, I suppose).  This driver does not do that, but we could speak
about how you'd like that done were this driver at some point
considered for inclusion in the kernel.

E


On Tue, 22 Feb 2005 10:07:55 -0800, Eric Brower <ebrower@gmail.com> wrote:
> Attached is a patch against a somewhat dated BK 2.6.10 that provides
> the following:
> 
>   1) a basic framework for supporting SUNW,envctrl environmental
> monitoring flavors
>   2) an implementation of the framework for basic SUNW,envctrltwo
> (UE250) support
> 
> I am using the term "framework" very lightly here.
> 
> This demonstrates use of the in-kernel I2C subsystem rather than the
> current roll-your-own support found in the envctrl and bbc_envctrl
> drivers.  There are a few shortcomings with using the in-kernel I2C
> but these can perhaps be ironed-out over time.  As well, it addresses
> issue brought up many months ago related to how the monitoring kernel
> thread is started/stopped and how the shutdown functions are invoked--
> basically a freshening.  I believe it would be easy to move the
> existing envctrl driver (should be renamed envctrl-i2c or somesuch) to
> this framework as well and I might be convinced to do so if there is
> any interest.
> 
> As for the in-kernel I2C shortcomings (as I understand them; correct
> me if you know better):
> 
> First, the UE250 is a multi-master I2C bus; this is unlike (so far as
> I know) other envctrl implementations.  The in-kernel I2C subsystem
> doesn't handle multimaster, but I've included an I2C patch to support
> detection of lost arbitration and I've passed this on to the lmsensors
> folks (still awaiting a response).  This lost arbitration detection
> and recovery could be tightened up a bit, but seems relatively stable.
> 
> Second, and related to the first, there does not seem to be a way
> within the I2C subsystem to send multiple I2C messages with dyamic
> content in a bus-atomic fashion, which is required for proper
> multimaster operation.  I have no workaround for this, though the I2C
> API could be easily modified to accomodate such an extension, I
> believe.  For the moment, our heavy locking (see below) and collision
> detection give us a level of protection but it doesn't make me sleep
> well at night.
> 
> Second, the in-kernel I2C isn't written to support use while
> in_interrupt() (it uses semaphores for restricting access), which is a
> requirement of the SUNW,envctrltwo (if we use interrupts...).  As a
> workaround, I've wrapped all I2C bus access calls with spinlocks.
> 
> Fourth, I don't see any easy way to leverage the use of the
> already-written chip drivers.  Implementing support for them was
> trivial, and it is not clear to me how a kernel module could probe
> existing chip drivers and retain a handle to them for in-kernel
> access.
> 
> This driver is relatively rough, but has been running on my E250 for
> quite a while under a bit of I2C bus stress.  I'd like to see reports
> from folks with dual CPUs, though.  Please note that I needed to
> upgrade my BK 2.6 to include SYM53C8XX version 2.1.18n, but that may
> just be due to my setup.  I've excessively abused sysfs for access to
> sensors data in this driver.  I'd appreciate any feedback.
> 
> Thanks,
> E
> 
> 
> 


-- 
E
