#!/bin/sh

# 인자가 하나인지 확인합니다.
if [ "$#" -ne 1 ]; then
    echo "폴더 이름을 인자로 전달해주세요"
    exit 1
fi

# 주어진 인자 이름으로 최상위 폴더를 생성합니다.
DIRECTORY=$1
mkdir -p $DIRECTORY

# 생성된 폴더 안에 file0~file5.txt 파일을 생성합니다.
for i in $(seq 0 5); do
    touch $DIRECTORY/file$i.txt
done

# $DIRECTORY 안에 같은 이름의 서브 디렉토리를 생성합니다.
mkdir -p $DIRECTORY/$DIRECTORY
cd $DIRECTORY

tar -cvf files.tar *.txt
mv files.tar $DIRECTORY

cd $DIRECTORY
tar -xvf files.tar
echo "작업이 완료되었습니다."

