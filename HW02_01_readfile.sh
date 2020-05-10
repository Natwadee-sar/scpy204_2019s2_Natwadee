#!/bin/bash
file="covidworld.csv"

IFS=$'\n'
for var in $(cat $file)
do
echo ": $var"
done
