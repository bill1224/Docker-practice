#!/bin/bash


PRE_IFS=$IFS
IFS="
"

for i in `ls -al`; do
    S=`echo $i | awk '{print $5}'`
    F=`echo $i | awk '{print $9}'`

    if [ "$F" == "." ] || [ "$F" == ".." ]; then
        continue
    fi
   
    echo "$S $F"    
done

IFS=$PRE_IFS

