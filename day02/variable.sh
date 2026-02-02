#!/bin/bash


<< comment
Understanding variable in shell scripting decleared and reading from user

comment

name="Rohan"
course="GCP_ACE"

echo "Hello $name, Welcome to $course!"

today=$(date)
echo "Today is $today"

sleep 5


read -p "Enter your Name: " name
read -p "Enter your Age: " age

echo "Hi $name,You are $age years old !"
