From: Felix Schmidt <fesc@force.de>
Date: Mon, 10 Aug 1998 09:56:00 +0000
Subject: Re: Booting UltraLinux on UlatraSPARC-IIi system
Message-Id: <marc-linux-ultrasparc-90275380219294@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90258733008734@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90258733008734@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
>    Date: 	Sat, 8 Aug 1998 12:53:12 +0200 (MET DST)
>    From: Felix Schmidt <fesc@force.de>
> 
>    I'd like to have a look at the sources, but i only have it in rpm format, which 
>    is of no use under Solaris.
> 
> Says who?  The RPM package tools compile and work just fine under
> Solaris just like any other program you can get the source to.
> 
Ok, ok, i got it now.

Looking at the sources, it seems that my original assumption turned out to be true. 
The serial driver probe routine (sab82532.c:sab82532_probe()) assumes that there is 
a Simba PCI-to-PCI bridge at the primary PCI bus of the Sabre. While this may 
be correct for current (Sun) hardware, it may not for others (it's not for our
hardware, and maybe not for future Sun HW). Therefore i'd suggest a more generic
approach to search the OBP tree.

Until i have set up my system so that i can compile the source by myself, here's a 
code fragment i use in my drivers for searching the PROM tree (2.x and 3.x) for a
specific node. From what i have seen, it should be usable under Linux as well. 

Cheers,

Felix.

P.S.: From the FAQ i read that the only non-linux environment to compile the kernel 
      with is SunOS 4. Is this still correct? Are there hints on what has to be obeyed
      for SunOS 5?


-------------


/*******************************************************************************
**
**  Function   vhi_prom_getnodebyname
**
**  Description: This function searches the device tree for a node of the given
**		name (based on "name" property) and returns the node id if
**		found.
**		The returned node id can be used for the prom_XXX() functions 
**		declared in sys/promif.h
**
**  Function's prototype ( ANSI-C ):
**
**	dnode_t vhi_prom_getnodebyname (char *name, int inst);
**
**  Description of the argument(s):
**
**	name	Name of device node to look for, or "/" for root node.
**	inst	Instance of node to search if there are more than one node with
**		the given name. If set to 0 or 1, the first occurence is returned,
**		if "2" the second one and so on.
**
**  Description of the return value(s):
**	0 	if the device node could not be found
**	node-id	else
**
**  Description of global variable(s):
**	nstack_size
**
**  Uses function(s): 
**
**  Remarks: 
**
*******************************************************************************/
static int nstack_size = 64;

dnode_t
vhi_prom_getnodebyname (name, inst)
    char *name;
    int inst;
{
    dnode_t tmp_id, id;
    dnode_t *n_stack;
    int sp = 0;
    char prop_buf[32];
    int cur_inst;
    int found;

    if (!strcmp( name, "/" ))
    {
	return prom_rootnode();
    }

    n_stack = (dnode_t*)kmem_zalloc( sizeof(dnode_t) * nstack_size, KM_SLEEP );

    n_stack[sp++] = prom_rootnode();
    
    if (inst < 1)
    {
	inst = 1;
    }
    
    cur_inst = 0;
    found = 0;
    
    /* This searches the device tree (depth-search) for a given node whose
     * name property matches the "name" argument.
     * We use a non-recursive algorithm so save stack space.
     */
    while (sp > 0)
    {
	tmp_id = n_stack[--sp];
	
	prop_buf[0] = 0;
	
	/* Check if this the node we are looking for
	 */
	prom_getprop( tmp_id, "name", (caddr_t)prop_buf );

	if (!strcmp( name, prop_buf ))
	{
	    cur_inst++;
	    
	    if (inst = cur_inst)
	    {
		found = 1;
		break;
	    }
	}
	
	/* No. Put all child nodes on the stack and continue searching
	 */
	for (id = prom_childnode( tmp_id ); 
	     id != 0; 
	     id = prom_nextnode( id ))
	{
	    n_stack[sp++] = id;
	    if (sp >= nstack_size)
	    {
		cmn_err( CE_PANIC, "VME: OBP node stack overflow. "
				   "Increase VME:nstack_size in /etc/system "
				   "(cur=%d)",
				   nstack_size );
	    }
	}
    }

    kmem_free( n_stack, sizeof(dnode_t) * nstack_size );
	
    if (!found)
	return 0;

    return tmp_id;
}



_____________________________________________________________
Felix Schmidt                   FORCE COMPUTERS GmbH
Software Engineer               http://www.forcecomputers.com
                                tel: +49-89-60814-0
mailto:fesc@force.de            fax: +49-89-60814-376
