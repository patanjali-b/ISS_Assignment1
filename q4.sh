#!/bin/bash

declare -a ARR

IFS=","
read -a ARR
size=${#ARR[@]}

echo "Printing the UNSORTED array"
echo -e "${ARR[*]}"


for ((i = 0; i<$size; i++))
do
    
    for((j = 0; j<$size; j++))
    do
    
        if [[ ${ARR[j]} -gt ${ARR[$((j+1))]} ]]
        then
            
            temp=${ARR[j]}
            ARR[$j]=${ARR[$((j+1))]}  
            ARR[$((j+1))]=$temp

     fi

   done
  
done   
 
 echo "Printing the SORTED array"
 echo ${ARR[*]}