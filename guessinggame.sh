function getInput {
        echo "Please guess number of files:"
        read guess
}


num_of_files=$(ls | wc -w)
guess=0

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
