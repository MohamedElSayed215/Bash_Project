#!/bin/bash
System_Display()
{   
    while [ true ] ; 
    do      
            select choice in CPU RAM DISK "BACK PAGE"  
            do 
                case $choice in
               CPU ) 
                read -ra CPU_F <<< "$(grep  "cpu MHz" /proc/cpuinfo | head -n 1)"  
                echo " The CPU Frequency : ${CPU_F[3]} MHz "                    
                ;;
               RAM ) 
                   free -h | awk '/Mem:/ { print "Used Memory  "   int(($3/$2)*100) "%"}'
                    read -ra USED <<< "$(free -h | grep Mem)"
                    IFS="Gi"
                    echo "Used ${USED[2]} GB "
                    ;;
               DISK) 
                    df -h
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

System_Display
