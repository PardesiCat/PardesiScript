#!/bin/bash/ 

echo "---------------------------------------------------"
echo "|                                                 |"
echo "|           Namaste : $(whoami)                   |"
echo "|                                                 |"
echo "--------------------------------------------------"

sleep 5

echo "--------------------------------------------------"
echo " This is simple Bash script written by Pardesicat "
echo "    To update and clean ur system single cmd      "
echo "--------------------------------------------------"

sleep 5

echo "starting.........................................."  

sleep 5


echo -e "\e[1;32m Step 1: Updating packages \e[0m"
sudo apt update

echo

echo -e "\e[1;32m Step 2: Upgrading packages \e[0m" 
sudo apt upgrade -y
sudo apt update -y

echo 

echo -e "\e[1;32m Step 3: Fixing Conflict Packages \e[0m"
sudo apt --fix-broken install -y

echo 

echo -e "\e[1;32m Step 3: Cleaning up \e[0m"
sudo apt clean -y
sudo apt autoclean -y
sudo apt autoremove -y

sleep 5

echo "--------------------------------------------------"
echo "              : ....Done.... :                    "
echo "--------------------------------------------------"

sleep 5

exit 
