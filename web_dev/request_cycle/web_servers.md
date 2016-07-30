# What are some of the key design philosophies of the Linux operating system?

Linux broadly follows the UNIX design principles, captured in these nine tenants below: 

Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

Source: [https://en.wikipedia.org/wiki/Unix_philosophy#Mike_Gancarz:_The_UNIX_Philosophy]

However: Due to its open source nature, Linux is less concerned with rigorous policy of quality assurance and organized development. It is a hacker's operating system. Linux favours expansion over stability.

Source: [http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html]

# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a computer that you can set up and access over the internet. However, it is not a physical server, but only a memory space, hard drive space and an amount of processor power within a server park.

Advantages of using a VPS to host your site are:
- less expensive than a physical server
- more stability and better security than hosting on your own computer
- easily scalable
- more efficient use of resources

# Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

With the root user, you have super user privileges, which allows you to affect every corner of disk space. However, there are considerable security risks to this: both in terms of user error and external interference. Programs these days are designed to run without super user access, so there no longer benefit of using root.


