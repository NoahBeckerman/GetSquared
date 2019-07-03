#!/bin/bash
DATE=`date +%Y-%m-%d`
localPATH=`pwd`               
           # path of current directory
seperator='-------------------------'

for d in {1..2}; do

  number=$RANDOM

  echo "Printing [ "$number "] to file: ${localPATH/GetSquared.html}"
  echo $number > $localPATH/GetSquared.html
  
  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m "GetSquared: "$number
  git -C $localPATH/ push

  sleep 5  # or sleep +3m
  
  echo -e '\n'
done