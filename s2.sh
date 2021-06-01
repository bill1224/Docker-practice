#!/bin/bash

for i in `ls *.txt`
do
    echo "--------------------------"
    echo $i
    cat $i
    echo "=========================="
done
