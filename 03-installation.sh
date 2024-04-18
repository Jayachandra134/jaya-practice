#!/bin/bash
userid=$(id -u)

if [ $userid -ne 0 ]
   then
       echo "install with a super user"
    else
       echo "you are a super user"
fi


