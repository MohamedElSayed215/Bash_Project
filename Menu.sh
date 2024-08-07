#!/bin/bash

echo "$(date) : $0" >> Kernel_logs.txt 

AdminMenu(){
    while 'true' ;
    do 
        select option in System Devices "Reboot,Shutdown" "Kernel Logs" Network  EXIT
        do     
            case $option
            in System)

                bash System_Display.sh 
                ;;
                Devices)
               
                bash Devices_Info.sh
           
                  ;;      
                "Reboot,Shutdown")
              
                bash Reboot_Shutdown.sh

                  ;; 
                Network)
                bash Network_Info.sh 
                ;;
                "Kernel Logs")
                cat Kernel_logs.txt 
                ;;
                 EXIT)
                echo "Now ,We will turn off the program !"
                echo "Good Bye"
                exit 
                ;;
                    
            esac
            break 



        done

    done 
}
UserMenu()
{   
     while 'true' ;
    do 
        select option in System   "Kernel Logs" Network  EXIT
        do     
            case $option
            in System)

                bash System_Display.sh 
                ;;
                Network)
                bash Network_Info.sh 
                ;;
                "Kernel Logs")
                cat Kernel_logs.txt 
                ;;
                 EXIT)
                echo "Now ,We will turn off the program !"
                echo "Good Bye"
                exit 
                ;;
                    
            esac
            break 



        done

    done 


}


if [ ${EUID} -eq 0 ];
then 
    AdminMenu 
else
    UserMenu 
 fi

