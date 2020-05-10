#!/bin/bash
file="covidworld.csv"

IFS=$'\n'

for var in $(cat $file)
do
IFS=$','
tokens=( $var )

if [ "${tokens[6]}" == "Thailand" ];then
  echo ": $var"
fi
done

exit 0
