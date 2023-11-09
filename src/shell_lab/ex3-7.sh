#!/bin/sh

# 인자가 하나인지 확인
if [ "$#" -ne 1 ]; then
    echo "폴더 이름을 인자로 전달해주세요"
    exit 1
fi

DIRECTORY=$1
mkdir -p $DIRECTORY
cd $DIRECTORY

# 디렉토리와 파일 생성 및 링크
for i in $(seq 0 4); do
    DIR_NAME="file$i"
    FILE_NAME="file$i.txt"
    mkdir -p $DIR_NAME
    touch $FILE_NAME
    ln -s ../$FILE_NAME $DIR_NAME/$FILE_NAME
done

echo "작업이 완료되었습니다."

