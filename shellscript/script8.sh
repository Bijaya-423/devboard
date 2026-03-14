#!/bin/bash

name="DevOps"

num=10

echo $((num+5))

read -p "Enter a: " a
read -p "Enter b: " b

echo "Addition of a$a & b$b: $((a+b))"

myfunc(){
	local city="Delhi"
	echo $city
}
