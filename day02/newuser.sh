#!/bin/bash

<< comment
This is a script to understand adding user with help of variable and useradd command 

comment

read -p "Enter Username : " username

echo "You entered $username"

sudo useradd -m $username

echo "New User Added, Verify in passwd file (cat /etc/passwd)"
