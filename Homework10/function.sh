#!/bin/bash

function user() {
 useradd tim
 useradd brad
 useradd ann
}
function yum() {
 yum install tree -y
 yum install httpd -y
 yum install git -y 
 yum install httpd wget unzip epel-release  mysql -y
}
read -p "1st function: "  user
read -p "2nd function: "  yum

read -p "Pick your function: " function
if [ $user -eq 1 ] 
then
  echo "function 1"
elif [ $yum -eq 2 ] 
then 
  echo "function 2"

else 
  echo "error, choice the either 1 or 2"
fi
