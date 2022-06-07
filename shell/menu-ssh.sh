#!/bin/bash

while true
do

clear

echo "Current hostname:" `hostname`
echo
echo "Hostname(s):"
echo "- wolfmoon (192.168.1.238)"
echo "- snowmoon (192.168.1.97)"
echo "- wormmoon (192.169.1.88)"

echo -e "\nEnter hostname (Q to exit): \c"

read input
case $input in

wolfmoon) echo "Connecting to wolfmoon (192.168.1.238) .."
ssh wolfmoon ;;

snowmoon) echo "Connecting to snowmoon (192.168.1.97) .."
ssh snowmoon ;;

wormmoon) echo "Connecting to wormmoon (192.168.1.88) .."
ssh wormmoon ;;

q|Q) clear; break;;

*) echo -e "\nInvalid selection. \c" ;;
esac

echo -e "Hit RETURN to continue. \c"
read

done
