#!/bin/bash

# Practice Question: Write backup-logs.sh that loops through all .log files in /var/log, checks if each is larger than 1MB (stat -c%s FILE), and copies ones that are to /tmp/log-backup/ with today's date in the filename.


#First create the backup directory with the -p option if it doesn't already exist

mkdir -p /tmp/log-backup

#Get the date in a variable

today=$(date +%F)

#loop through all .log files in /var/log

for files in /var/log/*.log
do
	#Get the sizes of all the .log files in bytes 

	size=$(stat -c%s "$files")

	 echo "$files = $size bytes"

	byte=1048576
	#To check if each .log file is greater than 1mb--in bytes
	if [ "$size" -gt "$byte" ]
	then
	#Get the exact file name without any other information associated with the file.
		exact_file_name=$(basename "$files")


		#copy the .log files > 1mb into the backup file
		cp "$files" "/tmp/log-backup/${today}-${exact_file_name}"

	echo "$exact_file_name backed up."
	fi
done
