#!/bin/bash
userid=$(id -u)

if [ $userid -ne 0 ]
   then
       echo "please run this script with super user"
       exit 1  #Comes out if error occurs
    else
       echo "you are a super user"
fi

dnf install mysql -y

if [ $? -eq 0 ]
   then
       echo "installation of my sql is.....sucess"
       #exit 
    else   
      echo "installation of my sql is...........failed"
fi

echo "script is proceding"
echo "userid is $userid"
