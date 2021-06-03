#!/bin/bash

echo "IFS=${IFS}."

PRE_IFS=$IFS
IFS=

for i in `ls -al`; do   
    echo $i | awk '{print $1 " " $9}'
    echo "IFS=${IFS}."
done 

IFS=$PRE_IFS
