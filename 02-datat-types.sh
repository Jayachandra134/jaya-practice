#!/bin/bash

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))

echo "sum of two numbers $NO1 and $NO2 is : $SUM"

echo "####################################################################3"

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"

echo "**************************************************************************"

Num=$3

if [ $Num -gt 100 ]
 then
     echo "$Num is greater than 100"
 else
     echo "$Num is less than 100"
fi     
echo "***************************************************************************"