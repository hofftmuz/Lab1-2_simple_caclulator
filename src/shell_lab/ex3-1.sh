#!/bin/sh

count=10

if [ ! -z "$1" ]; then
    count=$1
fi

if ! [ "$count" -eq "$count" ] 2>/dev/null; then
    echo "Error: Provided argument is not a number."
    echo "사용법: $0 [출력 횟수]"
    exit 1
fi

i=1
while [ $i -le $count ]
do
    echo "hello world"
    i=$((i+1))
done

