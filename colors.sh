#!/bin/bash

userid=$(id -u)
scriptname=$( echo $0 | cut -d "." -f1 )
timestamp=$(date +%F-%H-%M)
logfile=/tmp/$scriptname-$timestamp.log


R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $userid -ne 0 ]
     then
         echo "you are not a super user to run this script"
         exit
     else
         echo "you  are a super user"
fi


validate()
{
    if [ $1 -ne 0 ]
      then
        echo -e "$2......$R FAILED $N"
        exit
      else
        echo -e "$2......$G Success $N"  
    fi
}

dnf install mysql -y &>>$logfile
validate $? "Installation of mysql ::"

dnf install git -y &>>$logfile
validate $? "Installation of git ::"

dnf install dockerr -y &>>$logfile
validate $? "Installation of docker ::"

echo "script is moving ahead"
