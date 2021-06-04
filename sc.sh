#!/bin/bash


PRE_IFS=$IFS
TOT=0
IFS="
"

user=`whoami`
FileName="bin_files.txt"
cd /home/${user}/workspace/Docker-practice
touch $FileName

for i in `ls -al`; do
    S=`echo $i | awk '{print $5}'`
    F=`echo $i | awk '{print $9}'`

    if [ "$F" == "." ] || [ "$F" == ".." ] || [ "$F" == "" ]; then
        continue
    fi
   
    TOT=`expr $TOT + $S`
    echo "$S $F" >> $FileName
done


echo "Total size is $TOT"
IFS=$PRE_IFS

