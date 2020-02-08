#!/bin/bash
if [[ "${UID}" -eq 0 ]]
then
    {
    echo "NAME: $1"
    PASSWORD="${RANDOM}"
    echo "comment: $2"

#read -p "Enter your name:" NAME
#read -p "Enter your password:" PASSWORD
#read -p "Enter your full-name of person using this account:" comment
    useradd -c  $2  $1
    echo "RANDOM PASSWORD IS: ${PASSWORD}"
    echo ${PASSWORD} | passwd --stdin ${1}
    passwd -e ${1}
    }
else
  {
   not_root
   #this is to display a error message so that command not found will be displayed
  }
fi





