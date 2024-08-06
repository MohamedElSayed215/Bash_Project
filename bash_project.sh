#!/bin/bash
###########################################################################################
while [ true ];
do 
    echo "Welcome to The FINAL BASH PROJECT !"
    read -p   "LET 'S TO RUN ! "  cmd
    
    read -ra check <<< "$cmd"
    temp="./"
    projectname="$temp$0"

    echo "${projectname}"
    if [ "${check[1]}" == "${projectname}" ] ;
    then 
        if [ "${check[0]}" == "sudo" ];
        then 
            echo "NOW , YOU ARE AN ADMIN ! "
            break
        else 
        echo "NOW , YOU ARE AN USER ! "
        break 
        fi  
    fi
        echo " YOU ARE RUNNING THE WRONG PROJECT" 
        echo " TRY AGAIN !"       
     
done 

#############################################################################################
while [ true ] ;
do 
        select option in System Devices "Reboot,Shutdown" "Kernel Logs" Network  EXIT
        do     
            case $option
            in System)

                bash System_Display.sh 
                ;;
                Devices)
                if [ "${check[0]}" == "sudo" ]
                then
                        bash Devices_Info.sh
                        
                else 
                    echo "it is not available for USER MODE ! "
                fi 
                  ;;      
                "Reboot,Shutdown")
                if [ "${check[0]}" == "sudo" ]
                then
                        bash Reboot_Shutdown.sh
                        
                else 
                    echo "it is not available for USER MODE ! "
                fi 
                  ;; 
                Network)
                bash Network_Info.sh 
                ;;
                "Kernel Logs")
                cat Kernel_logs.txt 
                ;;
                 EXIT)

                exit 
                ;;
                    
            esac
            break 



        done

done         
###############################################################################################




