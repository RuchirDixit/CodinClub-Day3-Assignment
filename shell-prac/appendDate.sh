#!/bin/bash -x

for files in `ls *.log.1`; 	# looping through all .log.1 files
	do
		#echo Files to change are: $files;
		baseName=`echo $files | awk -F. '{print $1}'`;  # extracting base name using . as field separator
		extension=`echo $files | awk -F. '{print $2}'`; # extracting log using $2 and . separator
		current_date="$(date +'%d%m%Y')";
		#echo Todays date is: $current_date;
		mv $files $baseName"-"$current_date"."$extension;	
		echo updates $files;

	done;
