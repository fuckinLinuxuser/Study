
---
## *Command Line* 

*$ whoami - send user name*

		**/**
		**|-- bin**
		**|   |-- file1**
		**|   |-- file2**
		**|-- etc**
		**|   |-- file3**
		**|   |-- directory1**
		**|       |-- file4**
		**|       |-- file5**
		**|-- home**
		**|-- var**

*$ ==pwd== - print work directory* 

*$ ==cd== - change directory* 
*variation:*
	*cd . - current dir*
	*cd .. - parent dir*
	*cd ~ - home dir*
	*cd - - previous dir*

*$ ==ls== - list dir*
*flags:*
	*ls -a - show all*
	*ls -l - show like list or large*
*also you can try split it:*
	*$ ls -la*

*$ ==touch== - create a new file, change timestamps on existing files and directories*
*$ ==file== - show a description of thw file's contents*
*$ ==cat== - print text from file*
*$ ==less== - print a lot of text* 
*$ ==history== - show a last commands*

*$ ==cp== - copy a file*
*example:*
	*$ cp MY_FILE /home/pepe/Documents*
	*$ cp .jpg /home/pepe/Photo*
	*$ cp MY_DIRECTORY/ /home/pepe/Downloads*
	*$ cp -i MY_FILE /home/pepe/Files   (interactive) - let's choise overwriting file's*

*$ ==mv== - move, renamed file's*
*example:* 
	*$ mv OLD_NAME NEW_NAME*
	*$ mv JUST_FILE /project*
	*$ mv DIRECTORY1 DIRECTORY2*
	*$ mv -i DIR3 DIR4*
	*$ mv -b DIR3 DIR4 (backup)* 

*$ ==mkdir== - make a new directory*
*example:* 
	*$ mkdir -p BOOKS/HEMMINGWAY   (parents) - parent flag*

*$ ==rm== - remove a file*
*example:* 
	*$ rm -r DIRECTORY      (recursive) - remove a directory*
	*$ rm -f ANYONE_FILE    (force) - remove file with protection*
	*$ rm -i FILE           (interactive)*
*$ ==rmdir== - remove a directory*

*$ ==find== - find file's by type or name*
*example:*
	*$ find /home -name LOGS.txt*
	*$ find /etc -type d -name FOLDER    (directory)*

*$ ==help== - how to use commands*
*$ ==man== - manuals to use commands*
*$ ==whatis== - one-string manual to command*

*$ ==alias== - rename commands*
*example:*
		*$ alias mycommand='ls -al'*
		*$ unalias mycommand*

*$ ==exit== - exit from root (if you use at the same moment) or exit from shell* 

---
## *User Management*

*$ ==root== - command to get superuser*
*example:* 
	*$ sudo -i* 

*$ cat /etc/passwd*
*$ root:x:0:0:root:/root:/bin/bash*
1. *Username*
2. *Password*
3. *User's ID (UID)*
4. *The group ID (GID)*
5. *Used to leave comments about the user*
6. *User's home directory*
7. *User's shell*

*$ cat /etc/group*
*$ root:x:0:pepe*
1. *Group name*
2. *Group password*
3. *GID*
4. *List of users*

*$ ==sudo useradd== - add a new user*
*$ ==sudo userdel== - delete a user*
*$ ==sudo passwd== - change a password*

---
## *Permissions*

*example:*
	*d|rwx|rwx|rwx*
	*1. Type (directory)*
	*2. Read, write, execute for owner*
	*3. For group*
	*4. For others*

*$ ==sudo chmod== - change modify
*example:*
	*$ sudo chmod u+w FILE   (u-user, w-write)*

*$ ==sudo chown== - change owner*
*exp:*
	*$ sudo chown pepe MY_FILE*

*$ ==sudo chgrp== - change group*

*$ ls -l /etc/shadow*
*$ -rw==s==r-----*

*s - root modify, it can be set for users and groups*

*$ ls -ld /tmp*
*$ drwxrwxrwx==t==*

*t - only owner or root can delete or modify directory*

---

## Processes

$ ==ps== - processes
	PID        TTY       STAT      TIME      CMD  
	41230   pts/4       Ss      00:00:00   bash  
	51224   pts/4        R+     00:00:00    ps

- PID: Process ID
- TTY: Controlling terminal associated with the process (we'll go in detail about this later)
- STAT: Process status code
- TIME: Total CPU usage time
- CMD: Name of executable/command

$ ps aux 
	a - all
	u - more details
	x - lists all without TTY

USER      PID    %CPU    %MEM       VSZ      RSS     TTY      STAT      START   TIME   COMMAND
root          1          0.3          0.0       23500  14064     ?           Ss         18:28     0:03   /sbin/init sp
root          2          0.0          0.0           0          0          ?            S          18:28     0:00     kthreadd

- USER: The effective user (the one whose access we are using)
- PID: Process ID
- %CPU: CPU time used divided by the time the process has been running
- %MEM: Ratio of the process's resident set size to the physical memory on the machine
- VSZ: Virtual memory usage of the entire process
- RSS: Resident set size, the non-swapped physical memory that a task has used
- TTY: Controlling terminal associated with the process
- STAT: Process status code
- START: Start time of the process
- TIME: Total CPU usage time
- COMMAND: Name of executable/command

### Processes status
- R: running or runnable
- S: interruptible sleeps, waiting for an event to complete
- D: uninterruptible sleep, processed that cannot be killed or interruptibted
- Z: zombie
- T: Stopped by ctrl+Z

$ ==kill== - kill the process by PID
exp:
	$ kill - 9 5364          (SIGKILL)

- SIGHUP - Hangup, sent to a process when the controlling terminal is closed. For example, if you closed a terminal window that had a process running in it, you would get a SIGHUP signal. So basically you've been hung up on
- SIGINT - Is an interrupt signal, so you can use Ctrl-C and the system will try to gracefully kill the process
- SIGTERM - Kill the process, but allow it to do some cleanup first
- SIGKILL - Kill the process, kill it with fire, doesn't do any cleanup
- SIGSTOP - Stop/suspend a process

$ ==nice== - change the niceness level of a process (for a new process)
$ ==renice== - also change niceness level (for a existing process)
exp:
	$ renice 10 -p 7639

Processes information is stored in a /proc
$ ls /proc