#!writted by Pardesi_Cat
#!/bin/bash/ 

APT="/usr/bin/apt"

RED='\e[31m'
BLUE='\e[34m'
PURPLE='\e[35m'
PURPLEB='\e[1;35m'
REDB='\e[1;31m'
CEND='\e[0m'

os () {
    cat /etc/os-release
}


cat catboii

sleep 5

if [ -f "$APT" ] ; then
     echo -e "${BLUE}you are on debian type system with apt"
     echo
     echo -e "${BLUE}starting${CEND}"
     echo

echo -e "--------------------------------------------------"
echo -e "|                                                 |"
echo -e "          Namaste : ${PURPLEB}$(whoami)${CEND}      "
echo -e "|                                                 |"
echo -e "--------------------------------------------------"
sleep 2

echo "--------------------------------------------------"
echo " This is simple Bash script written by Pardesicat "
echo "    To update and clean ur system single cmd      "
echo "--------------------------------------------------"

sleep 5
echo "              checking Your system Info          "
sleep 2
echo "========================================================================"
uname -a
echo "========================================================================"
sleep 5

sleep 5

echo "starting.........................................."  

sleep 2


echo -e "\e[1;32m Step 1: Updating packages \e[0m"
sudo apt update -y

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

echo

echo -e "\e[1;32m Final Step: Final upgrade \e[0m"

sudo apt update -y
sudo apt upgrade -y

sleep 5


echo -e "--------------------------------------------------"
echo -e "              ${REDB}....Done....${CEND}                   "
echo -e "--------------------------------------------------"

sleep 5

exit

else 
	echo -e "${PURPLE}your on other system${CEND}"
	echo -e "${BLUE}__________________________________"
	os
	echo -e "__________________________________"
	echo -e "${REDB}closing script"
	exit 0


 fi
