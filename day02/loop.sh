#!/bin/bash

<< comment
Understanding the concept of for loop, while loop and until loop.
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

num=1

while [[ $num -le 10 ]]
do
	if (( num % 2 == 0))
	then
		echo $num
	fi
	((num++))
done

sleep 5

echo "Understanding until loop"

echo ""

count=1

until [ $count -gt 5 ]
do
	echo "Count : $count"
	count=$((count + 1))
done

