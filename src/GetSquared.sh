DATE=`date +%Y-%m-%d`
localPATH=`pwd` 
mother_repo='http://www.github.com/NoahBeckerman/GetSquared'              

read -p 'How many commits today? ' commits
echo -e '\n'

read -p 'How many seconds to sleep? ' timer
echo "(Recomended is 5 seconds/ Can't go below 2 seconds)"
echo -e '\n'

echo  "Pushing ["$commits"] commits to the repo ["$mother_repo"]"
echo -e '\n'

for x in {seq 1 100}; do

  number=$RANDOM

  echo "Printing [ "$number "] to file: ${localPATH/GetSquared.html}"
  echo $number > $localPATH/GetSquared.html

  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m "GetSquared: "$number
  git -C $localPATH/ push

  sleep 2  # or sleep +3m
  
  echo -e '\n'

  done

echo "You have successfully pushed ["$commits"] commits to the repo ["$mother_repo"]"
