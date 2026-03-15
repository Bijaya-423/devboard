#!/bin/bash

<<disclaimer
THis is 
for the 
devops 
condtional 
statement

disclaimer


read -p "enter the course: " course
read -p "enter the azure %: " cloud

echo

if [[ $course == "aws" ]]
then
	echo "devops course"
elif [[ $cloud -ge 100 ]];
then
	echo "you know azure"
else
	echo "not devops course"

fi
echo




















