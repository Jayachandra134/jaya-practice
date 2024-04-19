#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log

if [ $userid -ne 0 ]
   then
       echo "your are not a super user"
       exit
    else
        echo "you are a super user"
fi

for i in $@
do
echo "package is --$i"
done