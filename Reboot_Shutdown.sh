#!/bin/bash

echo "$(date) : $0" >> Kernel_logs.txt
while [ true ] ; 
do

    select choice in Reboot Shutdown
    do
        case $choice in 
        Reboot)
        sudo reboot
        ;;
        Shutdown)
        sudo shutdown now 
        ;;
        esac 
        break 
        done
done