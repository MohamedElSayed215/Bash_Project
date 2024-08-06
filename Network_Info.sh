#!/bin/bash
Network_Info()
{
echo "IP of the Network is : $(hostname | xargs -n 1 dig +short A)"

echo "DNS Information  :  $( cat /etc/resolv.conf | grep -i nameserver )"

speedtest

}
Network_Info
echo "$(date) : $0" >> Kernel_logs.txt 

