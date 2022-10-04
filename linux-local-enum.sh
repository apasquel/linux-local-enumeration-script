#!/bin/bash

##### (Cosmetic) Colour output
red=$(tput setaf 1)      # Issues/Errors
green=$(tput setaf 2)    # Success
yellow=$(tput setaf 3)   # Warnings/Information
blue=$(tput setaf 4)     # Heading
bold=$(tput bold  setaf 7)     # Highlight
reset=$(tput setaf 7)       # Norma
#Author: $blue @Arr0way 
#Ripped off by Austin Pasquel. 
sleep 1.2
printf "\n"
printf "\n"
sleep 0.2
(

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Linux Version\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/bin/cat /etc/issue
printf "\n" 
/bin/cat /etc/*-release

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Kernel Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/uname -ar
printf "\n"
/usr/bin/cat /proc/version

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Installed Kernel Modules"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/sbin/lsmod

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Date/Time Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/date

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Current Network Configuration and Connections"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/sysconfig/network
printf "\n"
/bin/cat /etc/resolv.conf
printf "\n"
/bin/cat /etc/sysconfig/network-scripts/ifcfg-eth0
printf "\n"
/sbin/ip a
printf "\n"
/sbin/ifconfig -a
printf "\n"
/usr/bin/netstat -anp
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Network Routing Tables"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/netstat -rn
printf "\n"
/usr/sbin/route
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Processes Running"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/ps -ef 

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red File System Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/df -h

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Mounted File Systems with Pretty Output"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/df -h
printf "\n"
mount | column -t

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Current Open Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/lsof -V

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/fstab File System Table (fstab) Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/fstab

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/passwd File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/passwd

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/shadow File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/shadow

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/group File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/group

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/sudoers File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/sudoers

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned SUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -user root -perm -4000 -print 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned GUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -group root -perm -2000 -print  2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable Directories"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -perm -222 -type d 2>/dev/null  

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red SUID Owned by any user\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -perm -4000 -o -perm -2000 -print 2>/dev/null
printf "\n"

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no owner\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -nouser -print 2>/dev/null

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no group\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -nogroup -print 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -type f -perm 0777 2>/dev/null

#printf "\n"
#printf "$blue"
#printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
#printf "##"
#printf "\n"
#printf "$red"
#printf "$blue## $red Files Owned by Current User"
#printf "\n"
#printf "$blue"
#printf "##"
#printf "\n"
#printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
#printf "\n"
#printf "$reset"

#/usr/bin/find / -user $(whoami) 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Hidden Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

find / -name ".*" -type f ! -path "/proc/*" ! -path "/sys/*" -exec ls -al {} \; 2>/dev/null`
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /home and /root Permissions"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/ls -ahlR /home/
/bin/ls -ahlR /root/ 

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/w

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Last Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/last

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Last Failed Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/lastb
printf "\n"
/usr/bin/lastlog

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Installed Packages for RHEL / Debian Based Systems"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

printf "\n"
/usr/bin/dpkg -l

printf "\n"
/usr/bin/rpm -qa

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red CentOS / RHEL Services that start at Boot"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

chkconfig --list | grep $(runlevel | awk '{ print $2}'):on
printf "\n"


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Security Status"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/sbin/sestatus 2>/dev/null
printf "\n"
/usr/bin/sudo -V 2>/dev/null
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red List of init Scripts aka System Services"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/ls /etc/init.d/
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Bashrc Variables"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/cat /etc/bashrc
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Log Listing"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/ls -l /var/log
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logs: Boot"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/tail -n 100 /var/log/boot.log
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logs: Yum"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/tail -n 100 /var/log/yum.log
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logs: Cron"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/tail -n 100 /var/log/cron
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logs: Secure"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/tail -n 100 /var/log/secure
printf "\n"

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "$reset"

# outputs to enum.log in current dir
) 2>&1 | /usr/bin/tee $(hostname).log
