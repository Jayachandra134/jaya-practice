#1/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 
then
    echo "your are not a super user"
    exit
 else 
    echo "you are a super user"



validate(){
  if [ $1 -ne 0 ]
      then
         echo "mysql installation success"
         exit
       else
         echo "$2 is Failed"
    fi
}


dnf install mysql -y
validate $? "installing my sql"