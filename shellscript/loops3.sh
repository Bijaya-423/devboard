#!/bin/bash

#This is for and while loops
#
#
<<comment
 1 - argument 1 which is folder name
 2 - is start range
 3 - is end range
comment

for (( i=$2; i<=$3; i++ ))
do
       if [[ -d "$1$i" ]]
       then
           echo "dir exists"	       
       else
	   mkdir "$1$i"
       fi
done


<<comment
for (( i=$2; i<=$3; i++))
do
	rm -r $1$i
done
comment
#ls 

rm -r day*


echo

