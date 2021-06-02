#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Input the filename, please.."
    echo "usage) ./s6.sh <to-change-file>"
    exit 0
fi

DATE=`date +%Y%m%d`
FN="${DATE}.txt"
#mv $1 $FN
#chmod +x $FN



