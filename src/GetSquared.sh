#!/bin/bash
DATE=`date +%Y-%m-%d`
localPATH=`pwd`                          # path of current directory
sep='---------------'
#for d in */; do
for d in {1..2}; do
  echo $sep"Checking Status of" $d$sep
  d=`echo $d | sed s#/##`                # remove trailing forward slash
  #git -C $localPATH/$d checkout master   # checkout master in different directory
  #git -C $localPATH/$d status            # run git status
  #NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
  number=$RANDOM

  echo $number > $localPATH/GetSquared.html
  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m 'Commit Cheat Updated'
  git -C $localPATH/ push

  sleep 10  # or sleep +3m
  
  echo -e '\n'
done