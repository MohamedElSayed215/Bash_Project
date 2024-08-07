#!/bin/bash
Network_Info()
{
echo "IP of the Network is : $(hostname | xargs -n 1 dig +short A)"
sleep 2                    
echo "DNS Information  :  $( cat /etc/resolv.conf | grep -i nameserver )"
sleep 2
speedtest

}
Network_Info
echo "$(date) : $0" >> Kernel_logs.txt 
