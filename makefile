README.md : guessinggame.sh
	echo "### This is a project for The Unix Workbench by Eamonn McKernan ###" > README.md 
	echo -n "This makefile was created at: " >> README.md
	date >> README.md
	echo -n "The number of lines of code in guessinggame.sh is: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

