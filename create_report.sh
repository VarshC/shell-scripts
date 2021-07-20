#!/bin/bash

#If 1st argument doesn't exist, throw error
#Leave spaces around $1
if [[ ! $1 ]]; then
	echo "Error: missing parameter: container name"
	exit 1
fi

if [[ ! $2 ]]; then
directory="$2"
else
directory="reports"
fi

container="$1"
directory="$2"

mkdir -p "$directory"
#grep X7 food.csv > reports/X7.csv

#grep returns successfully only if it finds matching lines
if grep "container" food.csv > "$directory/${container}_report.csv";
then echo "Wrote report, $directory/${container}_report.csv";
#input_file will need to be exported
else echo "Container $container not found in $input_file;
fi
