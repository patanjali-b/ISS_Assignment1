#!/bin/bash

read -p "Enter a string: " val
#echo $val
length=${#val}
rev_val=""

for((i=$length-1; i >= 0; i--))
do
   rev_val="$rev_val${val:$i:1}"

done

 echo "$rev_val"

 # 5B

 len=${#val}
 

echo  $rev_val | tr 'a-zA-Z' 'b-zA-Za' 


run=len/2
rev=""
non_rev=""

for(( i=$run-1; i>=0; i--))
do
   rev="$rev${val:$i:1}"

done
 
 #5C

for(( i=run; i<len; i++))
do
  non_rev="$non_rev${val:$i:1}"

done
ans=$rev$non_rev

echo  $ans


    
