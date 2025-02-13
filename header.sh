#!/bin/bash

if [ "$1" = "-c" ];
then
	if [ "$#" -eq 3 ]
	then

		datetime=$(date +"%d/%m/%Y at %H:%M:%S")

		touch header.txt

		echo "/* Auth : " $2 >> header.txt
		echo "Mail : " $3 >> header.txt
		echo >> header.txt
		echo $datetime >> header.txt
		echo >> header.txt
		echo "*/" >> header.txt
		echo >> header.txt
	else

		echo "usage : header.sh -c 'nom' 'email'"
	fi
fi
if [ "$1" = "-d" ];
then

	rm header.txt

fi
