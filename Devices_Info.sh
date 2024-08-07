#!/bin/bash
Devices_Info(){
while [ true ] ; 
    do      
            select choice in "Change  CPU Policy" "Battery Info"  "Control PC LED " "BACK PAGE"  
            do 
                case $choice in
               "Change  CPU Policy" ) 
                echo "Sorry ! it is not avaliable in VM .."
                sleep 3                   
                ;;
               "Battery Info") 
                   acpi
                   sleep 3 
                    ;;
               "Control PC LED ") 
                   select input in "ON-NUM-LOCK" "OFF-NUM-LOCK"
                   do
                   case $input in 
                   "ON-NUM-LOCK")
                    sudo bash control_numlock.sh ON 
                   ;;
                   "OFF-NUM-LOCK")
                   sudo bash control_numlock.sh OFF
                   ;;
                   esac
                   break
                   done
                ;;

                "BACK PAGE")
                return 0 
                ;;
                    esac 
                    break 
            done 
    done 
}
echo "$(date) : $0" >> Kernel_logs.txt

Devices_Info
