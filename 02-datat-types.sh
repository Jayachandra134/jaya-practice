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
