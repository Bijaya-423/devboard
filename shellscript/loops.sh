#!/bin/bash

#This is for & while loops

read -p "Enter How Many folder You create: " folder
echo
for ((i=1 ; i<=folder; i++));
do
	#mkdir "demo$i"
#	echo "demo$i folder created."



<<comment
	if [[ i=$i ]]
	then
		echo "demo$i folder created."
	fi
comment



	if [[ -d "demo$i" ]]
	then 
		echo "demo$i folder already exists."
		rm -r "demo$i"
	#else
	#	mkdir "demo$i"
	#	echo "demo$i folder created."
	fi
done





echo


















