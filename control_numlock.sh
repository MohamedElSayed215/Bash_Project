#!/bin/bash


if [ $1 == "ON" ];
then 
echo 1 > "/sys/class/leds/input2::numlock/brightness"
else 
echo 0 > "/sys/class/leds/input2::numlock/brightness"
fi 