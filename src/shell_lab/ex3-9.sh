#!/bin/sh
if [ "$#" -eq 0 ];then
	exit 1
fi

FILE=DB.txt
grep "$1" "$FILE"
