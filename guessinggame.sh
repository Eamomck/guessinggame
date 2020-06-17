function getInput {
	reg='[0-9]'
	guess=""
	while [[ ! $guess =~ $reg ]]
	do
		echo "Please guess number of files:"
	        read guess
	done 
}

num_of_files=$(find . -maxdepth 1 -type f | wc -l)
guess=""

while [[ $guess -ne $num_of_files ]]
do
	getInput
	if [[ $guess -gt $num_of_files ]]
	then
		echo "Guess was too high: $guess"
	elif [[ $guess -lt $num_of_files ]]
	then
		echo "Guess was too low: $guess"
	else
		echo "Congratulations. Your guess was correct, $guess. Number of files is $num_of_files"
	fi
done
