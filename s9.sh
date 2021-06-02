#!/bin/bash

arr=("aaaaa" "bbbb" "cccc" 123)

echo $arr
echo ${arr[1]}
arr[4]="4444"
arr[8]="ffff"
arr[5]="5555"

#@는 all을 의미 
echo ${arr[@]}
# #는 갯수를 의미한다 (배열의 원소 갯수가 몇개인지)
echo "${#arr[@]}"

for i in ${arr[@]}
do
    echo $i
done


