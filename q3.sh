#!/bin/bash
#size in bytes

 # 3A
size=$(wc -c < $1)
echo "The File size is: " $size "bytes"

 #total lines - 3B
 tot_lines=$(cat $1 | wc -l)
 echo "Total no of lines = " "$tot_lines"

 #Total words - 3C
 tot_words=$(cat $1 | wc -w)
 echo "Total no of words = " "$tot_words"
 
 # 3D

 awk '$0="Line No:"NR" - Count of words:"NF'  $1

# 3E

words=$(grep -o -E '\w+' $1 | awk '!remove[$0]++' )

for word in $words
do
    freq=$(grep -o "$word" $1 | wc -l)
    if [[ $freq -gt 1 ]]
    then
    echo "Word: $word - Count of repetition: $freq"
    fi
done

 
 

