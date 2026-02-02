#!/bin/bash


<< comment

This Script is to understand the working of if else and nested is statements

comment

read -p "Enter your marks : " marks

if [[ $marks -ge 90 ]]; then
	echo "A Grade"
elif [[ $marks -ge 70 && $marks -le 89 ]]; then
	echo "B Grade"
elif [[ $marks -le 69 && $marks -ge 35 ]]; then
	echo "C grade"
else
	echo "Fail, Study hard"
fi

