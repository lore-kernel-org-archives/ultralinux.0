From: Rich Sahlender <rsahlen@voicenet.com>
Date: Mon, 16 Nov 1998 20:33:13 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91127792725893@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I pulled the latest 2.1.129 from vger this morning and applied by
hand the parts of your patch that were not yet there. Got following
failure in "make modules" at fs/autofs/waitq.c:

waitq.c:172: conflicting types for `autofs_wait_release'
autofs_i.h:149: previous declaration of `autofs_wait_release'

So I changed the line in fs/autofs/autofs_i.h from
int autofs_wait_release(struct autofs_sb_info *,unsigned long,int);
to
int autofs_wait_release(struct autofs_sb_info *,autofs_wqt_t,int);

And all is well now on a sparc64!

Thanks guys,
Rich

PS... I caught up reading the rest of this thread, and changed
include/linux/auto_fs.h to use u32 in the typedef for autofs_wqt_t
instead of unsigned int which of course works too. Thanks again...

H. Peter Anvin wrote:
> > 
> > All of our userlands currently on sparc64 are 32-bit because we have
> > not bootstrapped a 64-bit userland fully enough yet.
> > 
> > We have a full (sic) 32-64 bit translation layer for all user visible
> > interfaces of the kernel already in files named
> > arch/sparc64/kernel/*32*.c which are supposed to take care of all
> > these issues.  Every once in a while an ioctl() or two slip by without
> > our noticing and we have to take care of it when the user finally hits
> > it.  :-)
> > 
> 
> Problem is that autofs passes an "unsigned long" in the ioctl()
> *argument*, not in a structure; also it passes data to the daemon via
> a packetized protocol on a pipe.
> 
> Here is a patch that I think will help.  It should keep the protocol
> unchanged on existing architectures (owing to the fact that
> sizeof(int) = sizeof(long) on 32-bit machines) while letting SPARC
> and MIPS (as far as I know the only hybrid 32/64-bit architectures)
> run 32-bit binaries on a 64-bit kernel, using the fact that
> sizeof(int) [32 bit] = sizeof(int) [64 bit]:
> 
> Please test this patch and give me feedback; if it works I'll pass it
> on to Linus.
> 
> 	-hpa
> 
> diff -ur stock/linux-2.1.128/fs/autofs/autofs_i.h linux-2.1.128-smp/fs/autofs/autofs_i.h
> --- stock/linux-2.1.128/fs/autofs/autofs_i.h	Sun Nov 15 15:29:20 1998
> +++ linux-2.1.128-smp/fs/autofs/autofs_i.h	Sun Nov 15 15:28:24 1998
> @@ -66,9 +66,9 @@
>  };
>  
>  struct autofs_wait_queue {
> -	unsigned long wait_queue_token;
>  	struct wait_queue *queue;
>  	struct autofs_wait_queue *next;
> +	autofs_wqt_t wait_queue_token;
>  	/* We use the following to see what we are waiting for */
>  	int hash;
>  	int len;
> @@ -79,8 +79,8 @@
>  };
>  
>  struct autofs_symlink {
> -	int len;
>  	char *data;
> +	int len;
>  	time_t mtime;
>  };
>  
> diff -ur stock/linux-2.1.128/fs/autofs/root.c linux-2.1.128-smp/fs/autofs/root.c
> --- stock/linux-2.1.128/fs/autofs/root.c	Sun Nov 15 15:29:20 1998
> +++ linux-2.1.128-smp/fs/autofs/root.c	Sun Nov 15 15:27:17 1998
> @@ -112,7 +112,8 @@
>  	if ( !(ent = autofs_hash_lookup(&sbi->dirhash, &dentry->d_name)) ) {
>  		do {
>  			if ( status && dentry->d_inode ) {
> -				printk("autofs warning: lookup failure on positive dentry, status = %d, name = %s\n", status, dentry->d_name.name);
> +				if ( status != -ENOENT )
> +					printk("autofs warning: lookup failure on positive dentry, status = %d, name = %s\n", status, dentry->d_name.name);
>  				return 0; /* Try to get the kernel to invalidate this dentry */
>  			}
>  
> @@ -502,9 +503,9 @@
>  	
>  	switch(cmd) {
>  	case AUTOFS_IOC_READY:	/* Wait queue: go ahead and retry */
> -		return autofs_wait_release(sbi,arg,0);
> +		return autofs_wait_release(sbi,(autofs_wqt_t)arg,0);
>  	case AUTOFS_IOC_FAIL:	/* Wait queue: fail with ENOENT */
> -		return autofs_wait_release(sbi,arg,-ENOENT);
> +		return autofs_wait_release(sbi,(autofs_wqt_t)arg,-ENOENT);
>  	case AUTOFS_IOC_CATATONIC: /* Enter catatonic mode (daemon shutdown) */
>  		autofs_catatonic_mode(sbi);
>  		return 0;
> diff -ur stock/linux-2.1.128/fs/autofs/waitq.c linux-2.1.128-smp/fs/autofs/waitq.c
> --- stock/linux-2.1.128/fs/autofs/waitq.c	Sun Nov 15 15:29:20 1998
> +++ linux-2.1.128-smp/fs/autofs/waitq.c	Sun Nov 15 15:26:17 1998
> @@ -18,7 +18,7 @@
>  
>  /* We make this a static variable rather than a part of the superblock; it
>     is better if we don't reassign numbers easily even across filesystems */
> -static int autofs_next_wait_queue = 1;
> +static autofs_wqt_t autofs_next_wait_queue = 1;
>  
>  /* These are the signals we allow interrupting a pending mount */
>  #define SHUTDOWN_SIGS	(sigmask(SIGKILL) | sigmask(SIGINT) | sigmask(SIGQUIT))
> @@ -168,7 +168,7 @@
>  }
>  
>  
> -int autofs_wait_release(struct autofs_sb_info *sbi, unsigned long wait_queue_token, int status)
> +int autofs_wait_release(struct autofs_sb_info *sbi, autofs_wqt_t wait_queue_token, int status)
>  {
>  	struct autofs_wait_queue *wq, **wql;
>  
> diff -ur stock/linux-2.1.128/include/linux/auto_fs.h linux-2.1.128-smp/include/linux/auto_fs.h
> --- stock/linux-2.1.128/include/linux/auto_fs.h	Fri Oct 23 10:15:56 1998
> +++ linux-2.1.128-smp/include/linux/auto_fs.h	Sun Nov 15 15:25:19 1998
> @@ -22,6 +22,27 @@
>  
>  #define AUTOFS_PROTO_VERSION 3
>  
> +/*
> + * Architectures where both 32- and 64-bit binaries can be executed
> + * on 64-bit kernels need this.  This keeps the structure format
> + * uniform, and makes sure the wait_queue_token isn't too big to be
> + * passed back down to the kernel.
> + *
> + * This assumes that on these architectures:
> + * mode     32 bit    64 bit
> + * -------------------------
> + * int      32 bit    32 bit
> + * long     32 bit    64 bit
> + *
> + * If so, 32-bit user-space code should be backwards compatible.
> + */
> +
> +#if defined(__sparc__) || defined(__mips__)
> +typedef unsigned int autofs_wqt_t;
> +#else
> +typedef unsigned long autofs_wqt_t;
> +#endif
> +
>  enum autofs_packet_type {
>  	autofs_ptype_missing,	/* Missing entry (mount request) */
>  	autofs_ptype_expire,	/* Expire entry (umount request) */
> @@ -34,7 +55,7 @@
>  
>  struct autofs_packet_missing {
>  	struct autofs_packet_hdr hdr;
> -        unsigned long wait_queue_token;
> +        autofs_wqt_t wait_queue_token;
>  	int len;
>  	char name[NAME_MAX+1];
>  };	
> 
