#!/bin/sh

# 내부 함수 정의
my_ls_function() {
    	echo "함수 안으로 들어 왔음."
	ls $@
}

echo "프로그램을 시작합니다"
my_ls_function $@

