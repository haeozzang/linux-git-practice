#!/bin/bash

echo "파일/디렉토리 이름 입력:"
read fname

if [ ! -e "$fname" ]
then
	echo "$fname 은 존재하지 않습니다."

elif [ -d "$fname" ]
then 
	echo "$fname 은 디렉토리입니다."

elif [ -L "$fname" ]
then
	echo "$fname 은 심볼릭링크입니다."

elif [ -c "$fname" ]
then
	echo "$fname 은 문자장치입니다."

elif [ -b "$fname" ]
then
	echo "$fname 은 블록장치입니다."

elif [ -p "$fname" ]
then
	echo "$fname 은 파이프입니다."

elif [ -s "$fname" ]
then 
	echo "$fname 은 소켓입니다."

elif [ -f "$fname" ]
then 
	echo "$fname 은 보통파일입니다."

fi
