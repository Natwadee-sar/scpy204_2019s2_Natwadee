#!/bin/bash
file="covidworld.csv"
total_case=0
IFS=$'\n'

for var in $(cat $file)
do
IFS=$',' 
tokens=( $var )

if [ "${tokens[6]}" == "Thailand" ];then
  total_case=$(($total_case + ${tokens[4]}))
fi
done
echo "Thailand's total covid case is : $total_case"
exit 0

