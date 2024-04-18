#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/temp/$scriptname-$timestamp.log
if [ $userid -eq 0 ]
   then
       echo "you are a super user"
    else
       echo "you are not a super usser"
       exit
fi

validate(){
  if [ $1 -eq 0 ]
  then
      echo "$2 :: Done"
  else
      echo "$2 :: Failed"

  fi
}

dnf install mysql -y &>>$logfile
validate $? "sql installation ::"
echo "$?"
dnf install git -y &>>$logfile
validate $? "Git installation ::"
echo "$?"
