What are some of the key design philosophies of the Linux operating system?

small (code) is beautiful, each program does one thing well, prototype early on, write portable code, store data in flat text files, leverage software, write shel scripts, don't use captive UI's, each program is a filter


In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

It has some benefits of a dedicated server and some of a shared server. It is a hybrid. VPS let you share one large server with other clients but you have your own dedicated space and memory. This space is private and no one else can use this space. The advantages are that its less expensive than a dedicated server and more reliable, scalable, and customizable than a shared server. 


Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

root ~ master admin

Mostly security, and it prevents you from causing damage through user error. Root accounts are entry-points for hackers and viruses. Also, changing or deleting files on your root account is more likely to impact your whole network than using your own environment.