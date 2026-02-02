#!/bin/bash

<< comment
Understanding the concept of for loop nad while loop

comment
echo "Using for loop"

for (( i=1; i<=5; i++ ))
do
	echo "$i"
done

echo ""

sleep 5

echo ""

echo "Printing even number using while loop"

echo ""

num=0

while [[ $num -le 10 ]]
do
	if (( num % 2 == 0))
	then
		echo $num
	fi
	((num++))
done

