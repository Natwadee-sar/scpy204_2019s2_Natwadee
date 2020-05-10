#!/bin/bash
echo "Hello this is Covid-19 checking programe"
read -p "What is your name: " name
echo Hello $name. Please answer the following questions:
read -p "How old are you: " age
if [[ "$age" -gt 140 ]]; then
        echo "plese enter your real age."
	read -p "How old are you: " age
fi

echo " Here are the coutries at risk for Covid-19"
echo "China Thailand Korean Japan Italy USA US Germany Sweden Norway Spain"
read -p "Did you came from one of the risked coutries listed above? (Y/N): " risk
read -p "Does anyone close to you has Covid-19? (Y/N): " closeone
read -p "Do you have fever? (Y/N): " fever
read -p "Do you have sore throat? (Y/N): " sorethroat
read -p "Have you continuously cough for at least 3 days? (Y/N): " cough


y="Y"
if [[ "$risk" == "$y" || "$closeone" == "$y" || "$fever" == "$y" || "$sorethroat" == "$y" || "$cough" == "$y" ]]; then
	echo "Please go to see a doctor. You are at risk of Covid-19."
else 
	echo "Congratulation! You are free from Covid-19."
fi

if [[ "$age" -gt 50 ]]; then
	echo "People around your age may get a higher risk of death from Covid-19, be careful"
fi
exit 0
