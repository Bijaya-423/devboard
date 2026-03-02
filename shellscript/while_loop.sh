#!/bin/bash

num=0
while [[ $num%2==0 &&$num -le 10 ]]
do
	echo "lol"
	#echo $num
	num=$num+1
done



num1=0
while [[ $num1%2==0 && $num1 -le 10 ]]
do

	echo $num1
	#num1=$num1+1
	num1=$((num1+1))
done












