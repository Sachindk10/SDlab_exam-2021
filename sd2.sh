read -p "Enter your string : " str
len=${#str}
i=0
flag=0
while [ $i -lt $((len/2)) ]
do
    if [ ${str:i:1} != ${str:len-i-1:1} ]
    then
        flag=1
        echo "Your given string is not Palindrome"
        break
    fi
i=$((i+1))       
done

if [ $flag -eq 0 ]
then   
    echo "Your String is Palindrome"
fi   