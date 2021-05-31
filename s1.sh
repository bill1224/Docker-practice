#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Input the filename, please.."
    echo "usage) ./s1.sh <format-file> <data-file> <test-file>"
    exit 0
fi

cat $i
