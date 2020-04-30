#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
	local filenum=$(ls -l | grep '^-' | wc -l)
	echo "Guess the number of files in the directory."

	while true
	do
		echo "Type in the number:"
		read num
		if  [[ $num =~ ^[0-9]+$ ]] ; then
			if [[ $num -gt $filenum ]] ; then
				echo "Your guess was too high. Try again."
			elif [[ $num -lt $filenum ]] ; then
				echo "Your guess was too low. Try again."
			else
				echo "Congratulate you guessed the right number."
				break
			fi
		else
			echo "Not a number. Try again."
		fi
	done
}
guess

