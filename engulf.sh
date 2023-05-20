#!/usr/bin/bash

WID=$(xdo id)

if [ $# -ne 2 ]; then
    echo "Two options required"
    exit 1
elif [ $# -eq 2 ]; then
    xdo hide $WID
    bash -c "$1 $2 > /dev/null 2>&1; exit"
    xdo show $WID
elif [ $2 = "fzf" ]; then
    file=$(printf '%q' "$(fzf)")
    xdo hide $WID
    bash -c "$1 $file > /dev/null 2>&1; exit"
    xdo show $WID
else
    exit 2
fi
