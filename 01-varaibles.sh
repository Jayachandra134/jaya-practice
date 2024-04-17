#!/bin/bash

echo "Ramesh:Hi suresh,how are you?"
echo "Suresh:Hi ramesh,i am fine and how about you"
echo "Ramesh:I am doing great"

echo "##################################################################################################"
person1=sachin
person2=rahul

echo "$person1:Hi how are you?"
echo "$person2:Hi i am fine and how about you"
echo "$person1:I am doing great"

echo "##################################################################################################"
person1=$1
person2=$2

echo "$person1:Hi how are you?"
echo "$person2:Hi i am fine and how about you"
echo "$person1:I am doing great"

echo "##################################################################################################"
echo "Enter username ::"
read -s USERNAME       #here read is system defined function and username is a variable
echo "enter password ::"
read -s PASSWORD
echo "user name is:$USERNAME and password is :$PASSWORD"


echo "##################################################################################################"
MOVIES=("Happy" "sad" "great" "Good")

echo "first movie is: ${MOVIES[@]}"
echo "first movie is: ${MOVIES[0]}"
echo "first movie is: ${MOVIES[3]}"

echo "##################################################################################################"


