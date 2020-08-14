#!/bin/bash -x

hello	# unsuccessful command
if [ $? -eq 0 ];	# if previous command successful it returns 0 else 127
	then
		echo "Command Successfully executed!"
		echo $?;
	else
		echo "Command unsuccessful!";
	fi

ls
if [ $? -eq 0 ];
	then
		echo "Command Successfully executed!";
	else
		echo "Command unsuccessful!";
	fi
