#!/bin/bash

echo "$0 $@ $1 $#"

say_hello() {
    echo "Hello $0 $@ by $2!! ($#)"
}

say_hello "jade" "jeon" $1
