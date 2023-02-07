#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: rmdryrun [-r] [files or directories]"
    exit 1
fi

recursive=false
if [ "$1" == "-r" ] || [ "$1" == "--recursive" ]; then
    recursive=true
    shift
fi

display_rm() {
    for item in "$@"; do
        if [ -d "$item" ]; then
            if [ "$recursive" == true ]; then
                echo "Would recursively remove directory $item"
                display_rm "$item"/*
            else
                echo "Would NOT remove directory $item (use -r to remove recursively)"
            fi
        elif [ -f "$item" ]; then
            echo "Would remove file $item"
        else
            echo "$item does not exist"
        fi
    done
}

display_rm "$@"
