#!/bin/bash
echo ""
echo ""
echo "Welcome!"
echo "This script allows you to connect to an AWS Instance."
echo ""
chmod 400 ~/Downloads/*.pem 
#exit 1 
read -p "Please input the public IP address of the instace: " IP
read -p "Username?" user
#Last file that was downloaded.
PEM="$(ls -tRr ~/Downloads/*.pem | tail -n1)"
ssh -o "StrictHostKeyChecking no" ${user}@${IP} -i "${PEM}"
##ssh ${user}@${IP} -i "${PEM}"
