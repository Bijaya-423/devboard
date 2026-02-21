#!/bin/bash

read -p "Enter the group name: $1"

echo "Group you create through the $1 arguments"


create_user='tappu'
sudo useradd -m $create_user
echo "You create the user through variable. $variable var create_user"


read -p "enter the user name $2"
echo "you create the user through args $2"





sudo deluser  "Bijaya"



sudo deluser "Aws"


