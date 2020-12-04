#!/bin/bash                                                                                                  
arp > networkinfo.txt
ss -s >> networkinfo.txt 
ping -c 2 cis.necc.mass.edu >> networkinfo.txt

echo " " >> networkinfo.txt #blank line
time=$(date) #time variable represents current date/time
echo "Last netinfo dump on $time" >> networkinfo.txt #output the date with text


#arp shows IP addresses translated by MAC address.  
#ss -s shows number of connections to each network protocol
#ping -c 2 cis.necc.mass.edu sends 2 counts of an ICMP echo request from the NECC CIS server by DNS

##all commands are appended to a text file on the home directory
