DATE=`date +%Y-%m-%d`
localPATH=`pwd` 
mother_repo='http://www.github.com/NoahBeckerman/GetSquared'
total_repo_commits=$(git rev-list --all --count)

commits_query(){
	read -p 'How many commits today? ' commits
	echo -e '\n'
}

timer_query(){
	read -p 'How many seconds to sleep? (Recomended is 5 seconds/ Can not go below 2 seconds)' timer
	echo -e '\n'
}

commits_query
timer_query


re='^[0-9]+$'
if ! [[ $commits =~ $re ]] ; then
   echo "ERROR: Please enter a integer" >&2; exit 1
fi

echo 'Total ammount of commits made to repo: ' $total_repo_commits
echo -e '\n'


echo  "Pushing ["$commits"] commits to the repo ["$mother_repo"]"
echo -e '\n'




for x in $(seq 1 $commits); do

  number=$RANDOM

  echo "Printing [ "$number "] to file: ${localPATH/GetSquared.html}"
  echo $number > $localPATH/GetSquared.html

  git -C $localPATH/ add . 
  git -C $localPATH/ commit -m "GetSquared: "$number
  git -C $localPATH/ push

  sleep timer  # or sleep +3m
  
  echo -e '\n'

  done

echo "You have successfully pushed ["$commits"] commits to the repo ["$mother_repo"]"
