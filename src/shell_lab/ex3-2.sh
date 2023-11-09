#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ];then
	echo "사용법:$0 num1 +/- num2"
	exit 1
fi

num1=$1
operation=$2
num2=$3

if [ "$operation" = "+" ]; then 
	result=$(expr $num1 + $num2)
elif [ "$operation" = "-" ]; then
	result=$(expr $num1 - $num2)
else
	echo "지원하지 않는 연산자입니다: $operation"
	exit 1
fi

echo "결과 : $result"
