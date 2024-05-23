#!/bin/bash

read -p "Enter the temperature you like your steak to be cooked at: " temp

if [ $temp -ge 120 ] && [ $temp -lt 130 ]
then
  echo "rare"
elif [ $temp -ge 131 ] && [ $temp -lt 140 ]
then 
  echo "medium rare"
elif [ $temp -ge 141 ] && [ $temp -lt 150 ]
then 
  echo "medium"
elif [ $temp -ge 151 ] && [ $temp -lt 160 ]
then 
  echo "medium well"
elif [ $temp -ge 161 ] && [ $temp -lt 170 ]
then 
  echo "well done"

else 
  echo "Error, please provide a number" 
fi
