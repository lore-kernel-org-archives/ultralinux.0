From: rick@dgii.com (Rick Richardson)
Date: Wed, 01 Jul 1998 23:24:02 +0000
Subject: Re: Boot of 1.0.9 fails on Sun Ultra 1 (actually, Ultra 30)
Message-Id: <marc-linux-ultrasparc-90222358530989@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631036@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631036@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Greg Onufer writes...
> On Fri, 26 Jun 1998 16:01:17 -0500 (CDT)  Rick Richardson wrote:
> > #define MAX_TRANSLATIONS 64
> > static inline void inherit_prom_mappings(void)
> > {
> >         struct linux_prom_translation transl[MAX_TRANSLATIONS];
> >         pgd_t *pgdp;
> >         pmd_t *pmdp;
> >         pte_t *ptep;
> >         int node, n, i;
> > 
> >         node = prom_finddevice("/virtual-memory");
> >         if ((n = prom_getproperty(node, "translations", (char *) transl,
> >                                   sizeof(transl))) = -1) {
> >                 prom_printf("Couldn't get translation property\n");
> >                 prom_halt();
> >         }
> > 
> > 
> > I have no real experience with Ultra's, but if somebody could
> > give me the low down on what this code is trying to do, I could
> > investigate it further.
> 
> It's simply trying to read the "translations" property of the
> virtual-memory node in the OpenBoot device tree.  When it "crashes",
> type "cd /virtual-memory" at the "ok" prompt and then type
> ".properties".  See how big the translations property is and increase
> MAX_TRANSLATIONS accordingly.  64 seems way too small and having a
> fixed-sized buffer like that isn't very robust.

OK, here is what we found out:

With Solaris running, I looked at .properties as stated above.
The translations property seemed to list about 150 lines looking like

...
00000000 6001c000 00000000 00002000 80000000 67ea4036
00000000 6001a000 00000000 00002000 80000000 67ea6036 ...


So the number needs to be at least 150, if not unlimited??

-Rick


-- 
Rick Richardson        Sr. Techno-something   Its 1993 again, and I don't have
Digi Intl.             Email: rick@dgii.com   a Web page.
11001 Bren Rd. East    Fax:   (612) 912-4955  
Minnetonka, MN 55343   Tel:   (612) 912-3212  
