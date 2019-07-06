#!/bin/bash
DATE=`date +%Y-%m-%d`
localPATH=`pwd` 
repoPATH='HTTP://www.github.com/NoahBeckerman/GetSquared'              


echo "How many commits today?"
read commits
echo -e '\n'

echo "How many seconds for each push? \n (Recomended is 5 seconds/ Can't go below 2 seconds)"
read timer
echo -e '\n'

echo  "Pushing [ "$commits" ] commits to the repo [ "$repoPATH" ]"
echo -e '\n'

for c in {1 .. $commits}
do

  number=$RANDOM

  echo "Printing [ "$number "] to file: ${localPATH/GetSquared.html}"
  echo $number > $localPATH/GetSquared.html

  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m "GetSquared: "$number
  git -C $localPATH/ push

  sleep timer  # or sleep +3m
  
  echo -e '\n'
done