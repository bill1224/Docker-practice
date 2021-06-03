#!/bin/bash

for i in {2..9}
do 
    for j in {1..9}
    do
        # $(())안에 있는 것은 연산을 하라는 의미이다.
        # expr 도 마찬가지로 연산을 하라는 명령어다  `expr 1 + 2` 하면 결과는 3이 나온다.
        echo "$i * $j = $(( $i * $j ))"
    done

    echo "===================="
done
