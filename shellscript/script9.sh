#!/bin/bash

CICD="Jenkins"

read -p "Enter the Devops Course Details: " devops
echo
echo "ci/cd - $CICD" , $devops
echo
read -p "arguments pass in script run time $1"


<<comment
This 
line should not 
execute
comment

sudo useradd -m $1 
sudo groupadd $2
echo
echo "user created - $1, group created $2"



echo
