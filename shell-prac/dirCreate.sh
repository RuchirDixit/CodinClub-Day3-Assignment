#!/bin/bash
for files in `ls *.txt`;
do
	baseName=`echo $files | awk -F. '{print $1}'`
	mkdir $baseName
	mv $files $baseName
done
