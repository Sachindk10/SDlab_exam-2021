#! /bin/bash
read -p "Enter your register number:" reg;
length = expr length $reg;
sum=0
number=0
for ((i=0;i<{#reg};i++)
do
    strng="${reg:$i:1}"
    if [[ "$strng" =~ ^[0-9]+$ ]]
    then
        number=$(($number*10+$strng))
    fi
done    
for ((i=1;i<${#number};i=i+2))
do
echo "${number:$i:1}"
sum=$(($sum+${number:$i:1))
done
echo $sum;