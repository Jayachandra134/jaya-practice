#1/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 
then
    echo "your are not a super user"
    exit
 else 
    echo "you are a super user"
fi


validate(){
  if [ $1 -eq 0 ]
      then
         echo "mysql installation success"
         exit
       else
         echo "$2 is Failed"
    fi
}


dnf install mysql -y
echo "$?"
validate $? "installing my sql"