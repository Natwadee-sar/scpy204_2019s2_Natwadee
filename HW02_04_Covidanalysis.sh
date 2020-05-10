#!/bin/bash
file="covidworld.csv"
total_case=0
total_dead=0
IFS=$'\n'

for var in $(cat $file)
do
	IFS=$','
	tokens=( $var )

	if [ "${tokens[6]}" == "Thailand" ];then
	  total_case=$(($total_case + ${tokens[4]}))
	fi

	if [ "${tokens[6]}" == "Thailand" ];then
	  total_dead=$(($total_dead + ${tokens[5]}))
	fi

done

echo "Thailand's total infection : $total_case"
echo "Thailand's total death : $total_dead"

echo -n "percentage of infection per population : 0"
echo $(echo $total_case*0.00000144033|bc);

echo -n "percentage of death per infection : "
echo $(bc <<< "scale=6 ; $total_dead*100/$total_case");


exit 0
