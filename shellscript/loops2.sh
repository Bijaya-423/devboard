#!/bin/bash

read -p "Enter How many folder you have to create:-" folder

echo


for ((i=1; i<=folder; i++))
do
    if [ -d "demo$i" ]
    then
        echo "demo$i folder already exists."
    else
        mkdir "demo$i"
        echo "demo$i folder created."
    fi
done

ls 

read -p "enter how many folder ypu have to delete:-" delete

echo
for (( i=1; i<=delete; i++))
do
	if [[ -d "demo$i" ]]
	then
		echo "folder already exists."

		echo " demo$i Now deleting this folder ."
		rm -r "demo$i"
		echo "demo$i folder deleted."
	fi
done




echo


















