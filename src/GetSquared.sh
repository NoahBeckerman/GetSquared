DATE=`date +%Y-%m-%d`
localPATH=`pwd` 
mother_repo='http://www.github.com/NoahBeckerman/GetSquared'
total_repo_commits=$(git rev-list --all --count)
re='^[0-9]+$'
min_value=0
min_timer=2

commits_query(){
	read -p 'How many commits today? ' commits
	echo -e '\n'
}

timer_query(){
	read -p 'How many seconds to sleep? (Recomended is 5 seconds/ Can not go below 2 seconds)' timer
	echo -e '\n'
}

commits_query
if ! [[ $commits =~ $re ]] ; then
   clear
   echo "ERROR: Please enter a possitive integer for total commits" >&2; commits_query
fi

if [ "$commits" -lt "$min_value" ] ; then
   clear
   echo "ERROR: Please enter a value greater than 0" >&2; commits_query
fi


timer_query
if ! [[ $timer =~ $re ]] ; then
   clear
   echo "ERROR: Please enter a possitive integer for timer" >&2; timer_query
fi

if [ "$timer" -lt "$min_timer" ] ; then
   clear
   echo "ERROR: Please enter a value greater than 2" >&2; timer_query
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
