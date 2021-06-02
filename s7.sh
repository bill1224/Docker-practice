#!/bin/bash

if [ $# -ne 2 ]; then
    echo "please, Input 2 filename"
    echo "./s7.sh <filename1> <filename2>"
    exit 0
fi

DATE=`date +%Y%m%d --date='1 day ago'`
FN=${DATE}.log
cat $1 >> $2
rm $1
mv $2 $FN



