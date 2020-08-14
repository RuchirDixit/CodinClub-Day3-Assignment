#!/bin/bash -x

folderName=`echo "xyza"`;
for files in `ls -d */`;	# checking all the directories in this folder
do
	if [ -d $folderName ];
	then
		echo "folder already exists..";
	else
		mkdir $folderName;	# create directory if not exists
		break;
	fi
done;
