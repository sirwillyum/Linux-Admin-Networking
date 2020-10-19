#!/bin/bash

ifconfig >> networkinfo.txt ##displays network configuration with IP address and network adapters
ss -s >> networkinfo.txt ##displays number of connections to each network protocol
ss -t >> tcpcon.txt ##shows only established tcp connections including any users on the serve
iptables -L >> firewallinfo.txt ##which ip adresses are allowed incoming, outgoing, or forwarded. 

##the iptables can be changed via commandline or scripts that allow or block traffic, this simply shows the current status. 

##all commands are appended to a specific text file on the home directory
