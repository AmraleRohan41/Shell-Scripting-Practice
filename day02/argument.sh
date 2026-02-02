#!/bin/bash

<< comment
This script is to understand the concept of urguments and how to pass argument in shell scripting
$0 - filename
$1 - First argument
$2 - second argument

comment

num1=$1
num2=$2

sum=$((num1+num2))

echo "Sum : $sum"
