#!/usr/bin/bash

WID=$(xdo id)

if [ $# -eq 0 ]; then
    echo "Need more arguments to work!"
elif [ $# -eq 1 ]; then
    xdo hide $WID
    bash -i -c "$1 > /dev/null 2>&1; exit 0"
    xdo show $WID
elif [ $2 = "fzf" ]; then
    file=$(printf '%q' "`fzf`")
    xdo hide $WID
    bash -i -c "$1 $file > /dev/null 2>&1; exit 0"
    xdo show $WID
elif [ $# -eq 2 ]; then
    xdo hide $WID
    bash -i -c "$1 $2 > /dev/null 2>&1; exit 0"
    xdo show $WID
else
    exit 2
fi
