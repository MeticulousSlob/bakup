# bakup version 2
bakup is an anacron job for running backups on a Linux desktop.
It is scheduled to run every three days.

bakup    : The main script that does all the work. it uses rsync
           to syncronise the folders in the bakdirs file to the 
           partitions in bakdst. uses bakmnt to mount all relevant
           partitions to this job.
bakup.d  : This script runs every three days, executes bakup.
           unmounts all partitions used when finished. logs to a
           file in /var/local/bakup/
bakmnt   : Mounts all partitions needed for bakup, this includes
           partitions used by Windows that store data, and the
           partitions on external hard drives where backup data
           will be stored. Uses other scripts that contain the UUIDs
           and mountpoints to mount the needed drives
bakdirs  : Contains the directorys that will be backed up
bakdst   : Contains the directorys that will receive the copied
           data
 

Linux system information (as of 2019-04-14):
OS: Fedora 29 (x86-64)
Kernal: 5.0.5-200.fc29.x86_64
Processor: AMD FX 8350 (Quad Core, hyperthreaded)
