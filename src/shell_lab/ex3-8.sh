#!/bin/sh
if [ "$#" -eq 0 ]; then
    echo "Name Phone_Num"
    exit 1
fi

echo $1 $2 >> DB.txt
