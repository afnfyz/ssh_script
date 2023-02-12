#!/bin/bash
echo ""
echo ""
echo "Welcome!"
echo "This script allows you to connect to an AWS Instance."
echo ""
chmod 400 ~/Downloads/*.pem
read -p "Please input the public IP address of the instace: " IP
PEM="$(ls -tRr ~/Downloads/*.pem | tail -n1)"
###PEM_FILE=$(basename $PEM)
###echo ${PEM}
###DIRPATH=$(dirname ${PEM}| xargs | cut -d' ' -f 1)/
echo $DIRPATH
###echo $PEM
###FULLPATH=$DIRPATH$PEM_FILE
echo $FULLPATH
ssh -o "StrictHostKeyChecking no" ${IP}
ssh ec2-user@${IP} -i "${PEM}"
