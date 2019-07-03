#!/bin/bash
DATE=`date +%Y-%m-%d`
localPATH=`pwd`               
           # path of current directory
seperator='-------------------------'
#echo "How many commits today?"
#read commits

#echo  "Pushing [ "$commits" ] to the repo"
#echo -e '\n'

for d in {1..200}; do

  number=$RANDOM

  echo "Printing [ "$number "] to file: ${localPATH/GetSquared.html}"
  echo $number > $localPATH/GetSquared.html

  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m "GetSquared: "$number
  git -C $localPATH/ push

  sleep 1  # or sleep +3m
  
  echo -e '\n'
done