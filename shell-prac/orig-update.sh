#!/bin/bash -x

if [ -d original ];  # check if original directory is already present
	then
		echo "Folder original already exists!";
	else
		mkdir original
	fi

if [ -d updated ]; # check if updated directory is already present
	then
		echo "Folder updated already exists!";
	else
		mkdir updated;
	fi

for files in `ls *file.sh`;  # checking all files ending with file.sh
	do
		folderName=`echo $files | awk -F- '{ print $1 }'`; #separating filename by hiphen
		#echo Folder name is $folderName;
		cp $files $folderName;
	done;
diff=`diff -u original/original-file.sh updated/updated-file.sh`; 	# checking difference between original and updated directory
#echo Difference is: $diff;
if [ ${diff} > 0 ];		# if there is difference then copy else print no difference
	then
		cp original original-backup;
		echo "Copied to original backup folder";
	else
		echo "No difference!";
	fi
diffVerify=`diff -u "updated" "original-backup"`;	# checking difference between updated and original-backup
if [ ${diffVerify} > 0 ];
	then
		echo "Updated and original-backup are different!";
	else
		echo "No difference!";
	fi
