From: Ward Deng <wdeng@KachinaTech.COM>
Date: Tue, 21 Jul 1998 23:29:41 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531066@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 16 Jul 1998, Luis Ponce de Leao wrote:

> Date: Thu, 16 Jul 1998 00:22:53 +0100 (WET DST)
> From: Luis Ponce de Leao <lmmdpl@camoes.rnl.ist.utl.pt>
> To: linux-smp@vger.rutgers.edu
> Cc: ultralinux@vger.rutgers.edu
> Subject: Re: Ultra AXmp
> 
> 
> Sun multi-processors systems and SGI Challenge are *SMP* systems,
> SGI Onyx and Origin as well as Cray T3D/E are distributed
  ^^^^^^^^

Onyx is an SMP system while Onyx-2 is the ccNUMA architecture. Onyx the
workstation version of Challege while Onyx-2 is workstation version of 
Origin. NUMA architectue is pretty much SMP nodes with local memory 
inerlinked together. 

T3D/E, Paragon, CM-5 and n-CUBE are in another category. Traditionally
they are called MPP (Massive Parallel Processor). They distributed 
memory systems with dedicated processor linkage.
 
> memory systems, CC/NUMA (non-uniform memory access with cache
> coherency) and SP2 is a message passing based systems, it's
> simply a cluster of RS/6000 workstations connected by a very high speed 
> network. 
> 
> > On Wed, 15 Jul 1998, Ward Deng wrote:
> > 
> > > What do you mean that?
> > > 
> > > IBM RS6000/SP2 is distributed memory system, or workstations linked with
> > > external high-speed switch. Sun's MP systems are all SMP design. SGI 
> > > Power Challenge or Onyx are SMP too. The newer SGI Origin is SMP with
> > > special memory links -- ccNUMA. They are very different architectures
> > > while SP nodes are no different from IBM's RS6000 workstations.
> 
