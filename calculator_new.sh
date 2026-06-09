#!/bin/bash

#Function for addition

addition() {
	result=$((num1+num2))
	echo "Addition resulrt: $result"
}

#Function for Subtraction

subtraction() {
	result=$((num1-num2))
	echo "subtration result: $result"
}

#Function for multiplication

multiplication() {
	result=$((num1*num2))
	echo "Multiplication result: $result"
}

#Function for Division

division() {
	if [ "$num2" -eq 0 ]; then 
	     echo "Error: Division by Zero is not allowed"
	else
	     result=$(echo "scale=2; $num1 / $num2" | bc)	
	     echo "Division rsult: $result"
	fi
}

# Take User Input
echo "Enter Number1"
read num1

echo "Enter Number2"
read num2

#Menu

echo "choose operation"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

#echo "Calculator script is running"

read choice

#call functions based on choice

case $choice in
	1) addition ;;
	2) subtraction ;;
	3) multiplication ;;
	4) division ;;
	*) echo "Invalid Choice" ;;
esac
