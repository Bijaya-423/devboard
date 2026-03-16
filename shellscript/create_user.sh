#!/bin/bash

read -p "Enter User Name: " username

echo "You Entered $username"
echo
sudo useradd -m $username

echo "User Added Through Prompt"

echo "The characters in $0 $1 $2" #this is the arguments at the time of run the bash script in shell you enter ./create_user.sh hello devops cloud.



#read -p "Enter the group: " $1

#echo "You Enter the group name through args $1"

sudo groupadd $1    # i want to add the group through the arguments 
echo "The characters in $0 $1"



