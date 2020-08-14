#!/bin/bash -x

	if [[ -z "$usersecret" ]];	# returns true if variable does not exists
	then
		export usersecret="dH34xJaa23";
		echo "Set!!"
	else
		echo "variable exists with value: " $usersecret;
	fi

