#!/bin/bash -x

for files in `find . -type f -mtime +2`;   #selecting files who have modified time more than 2 days
do
	mkdir backup; #creating backup folder to move files
	mv $files backup;
	echo "Files moved!";
done;
