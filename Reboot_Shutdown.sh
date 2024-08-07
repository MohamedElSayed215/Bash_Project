#!/bin/bash
Reboot_Shutdown(){
echo "$(date) : $0" >> Kernel_logs.txt
while [ true ] ; 
do

    select choice in Reboot Shutdown "EXIT PAGE"
    do
        case $choice in 
        Reboot)
        sudo reboot
        ;;
        Shutdown)
        sudo shutdown now 
        ;;
        "EXIT PAGE")
        return 0 
        ;; 
         
        esac 
        break 
        done
done
}


Reboot_Shutdown
