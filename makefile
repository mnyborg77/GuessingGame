README.md: guessinggame.sh
	echo "## Peer-graded Assignment: Bash, Make, Git and GitHub." > README.md
	echo "" >> README.md	
	{ echo "**Created:**" ;date ;}  >> README.md
	echo "" >> README.md
	echo "No. of line guessinggame.sh contains:" >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md
