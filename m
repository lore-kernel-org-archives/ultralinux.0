From: Thierry Lafage <lafage@irisa.fr>
Date: Fri, 02 Apr 1999 15:35:54 +0000
Subject: Re: Question about sys32_ioctl()
Message-Id: <marc-linux-ultrasparc-92306770528448@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

Nobody answered the question I posted yesterday, so I re-post it now
in case it was taken as a 1st april joke ;-). But this was not, even
if it sounds stupid from me to put my nose in the kernel sources...

The sys32_ioctl() code contains things I really do not understand, but
since I applied the modification I propose below, I would like to know
if it is a bad thing for the kernel stability and/or mechanisms. And
if it is, I apologize for the mailing lists pollution (as I should do
every time I post here).

Thierry Lafage.

------- Start of forwarded message -------

Hello,

I have made a personal char device driver. For the device, I would
like to add new ioctl commands (I have read the file
"Documentation/ioctl-number.txt" for that). But with sparc32 user
programs, the new ioctl commands cannot be serviced by my char driver:

sys32_ioctl: Unknown cmd fd(3) cmd(2000ee00) arg(00000000)

When looking in the code "arch/sparc64/kernel/ioctl32.c", the
sys32_ioctl() function never calls such added cmds: 

asmlinkage int sys32_ioctl(unsigned int fd, unsigned int cmd, unsigned long arg)
{
[...]
        switch (cmd) {
[...]
        default:
                do {
                        static int count = 0;
                        if (++count <= 20)
                                printk("sys32_ioctl: Unknown cmd fd(%d) "
                                       "cmd(%08x) arg(%08x)\n",
                                       (int)fd, (unsigned int)cmd, (unsigned int)arg);
                } while(0);
                error = -EINVAL;
                break;
        }
out:
        unlock_kernel();
        return error;
}


Would it be stupid to add something like what follows to the default
case (inspired from "fs/ioctl.c: sys_ioctl(...)")?

if (filp->f_op && filp->f_op->ioctl && filp->f_dentry && filp->f_dentry->d_inode)
	       error = filp->f_op->ioctl(filp->f_dentry->d_inode, filp, cmd, arg);

Thierry Lafage.
- -
To unsubscribe from this list: send the line "unsubscribe sparclinux" in
the body of the message to majordomo@vger.rutgers.edu
------- End of forwarded message -------
