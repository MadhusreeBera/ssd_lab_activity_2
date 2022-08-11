#! /bin/bash
if [ $# -gt 1 ]
then
    echo "Wrong number of inputs"
    exit
elif [ $# -eq 0 ]
then
    echo "No input given"
    exit
fi

if [ -f $1 ]
then
    lines=$(cat $1 | wc -l)
    #echo lines $lines
    if [ $((lines%2)) -ne 0 ];
    then
        lines=$((lines+1))
    else
        lines=$lines
    fi
    mid=$((lines/2))
    #echo mid $mid

    cat $1 | head -$mid | tail -1
else
    echo "File does not exist"
fi
