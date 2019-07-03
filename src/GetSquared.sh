#!/bin/bash
DATE=`date +%Y-%m-%d`
localPATH=`pwd`                          # path of current directory
seperator='---------------'
#for d in */; do
for d in {1..100}; do
  d=`echo $d | sed s#/##`
  echo $seperator"Checking Status of" $d$seperator
  number=$RANDOM

  echo $number > $localPATH/GetSquared.html
  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m 'Commit Cheat Updated'
  git -C $localPATH/ push

  sleep 10  # or sleep +3m
  
  echo -e '\n'
done